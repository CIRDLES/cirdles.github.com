#!/bin/bash

# This script will add user defined info to members.yml & push those changes to github & make a pull request

count=1
status="Current"
while [ $count == 1 ];
do
    echo
    echo "Enter your name"

    read userName

    echo
    echo "Enter the name of your profile picture"
    echo "Example: octocat.jpg"
    
    read pictureName

    count1=1
    while [ $count1 == 1 ];
    do
        echo
        echo "Enter the path name to your profile picture"
        read picturePath

        if [ -e "$picturePath" ];
        then
            mv "$picturePath" ./assets/images
            count1=0
        else
            echo "Enter a valid path"
        fi
    done


    count2=1
    while [ $count2 == 1 ];
    do
        echo
        echo "Enter your email address"

        read emailName

        if [[ $emailName =~ (.+)@(.+) ]];
        then
            count2=0
        else
            echo "invalid email address please try again"
        fi

    done 
        

    echo
    echo "Would you like to enter your blog url? (Y/N)"

    read rsp

    if [ $rsp == "Y" ] || [ $rsp == "y" ];
    then
        
        count3=1
        while [ $count3 == 1 ];
        do
            echo "Enter your full blog url"
            read blogName
            if curl --output /dev/null --silent --head --fail "$blogName"; then
                count3=0
            else
                echo "Enter a valid website"
            fi
        done

    else
        blogName=""
    fi

    echo
    echo "Name: "$userName 
    echo "Picture Name: "$pictureName
    echo "Email: "$emailName
    echo "Blog: "$blogName

    echo
    echo "Is this information correct? (Y/N)"

    read rsp1

    if [ $rsp1 == "Y" ] || [ $rsp1 == "y" ];
    then
        count=0
    fi
done

echo >> "./_data/members.yml"
echo "- name: $userName" >> "./_data/members.yml"
echo "  status: $status" >> "./_data/members.yml"
echo "  image_url: /assets/images/$pictureName" >> "./_data/members.yml"
echo "  position: Undergraduate Reasearch Assistant" >> "./_data/members.yml"
echo "  email: $emailName" >> "./_data/members.yml"
echo "  blog: $blogName" >> "./_data/members.yml"

echo
echo "Would you like to stage a pull request at this time? (Y/N)"

read rsp2

if [ $rsp2 == "Y" ] || [ $rsp2 == "y" ];
then
    echo
    echo "Enter the name of your forked github repository of CIRDLES/cirdles.github.com"
    read repoName

    echo
    echo "Enter the name of the current local branch"
    read branchName

    echo
    echo "Enter your github user name"
    read githubName

    git add _data/members.yml
    git add assets/images
    git commit -m "Added new member $userName"
    git push origin $branchName
    hub pull-request "Added new member $userName" -b CIRDLES/cirdles.github.com:master -h $githubName/$repoName:$branchName
fi