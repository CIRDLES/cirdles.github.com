---
layout: project-page
help: mars
title: Running MARS on Mac or Linux
category: Help
reference: Procedures-setting
---
1. Before installing Mars, you must have [npm](https://nodejs.org/en/download/) (Node Package Manager) and [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git). npm is used for managing dependencies for MARs. If you do not have Node.js and npm on your computer you will need to install Node and npm comes installed with it. Follow the instructions to download [Node.js](https://nodejs.org/en/download/) (Note: The MARs demo only works for MAC and Linux users right now)

2. You will also need to install [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) if you have not done so already and follow the step by step directions to install git on your Mac.

To set up MARS for developing on a Mac or Linux computer, please follow these instructions for the development environment. Since the project uses React and Redux, I suggest downloading the React and Redux Add-on developer tools through the Chrome browser, but they are not necessary for development.

1. If you do not have the MARS repository setup on your local machine, you will need to follow the instructions below. Otherwise, fetch any new code from the upstream with:

    <code>git fetch upstream master</code>

2. To set up your MARS repository, navigate to the MARS [github](https://github.com/CIRDLES/MARS) page and you will want to fork the project into your repositories by pushing the "Fork" button.
In your terminal, you will need to enter the command (where YOURUSERNAME is replaced with your github username):

    <code>git clone https://github.com/YOURUSERNAME/MARS.git</code>

    This will create a new folder in your current directory with the name "MARS" and initialize the repository.

3. Now you want to install the dependencies for MARS.
You will need to be in the /mars directory. You can change directories by running the following command in the terminal:

    <code>cd mars</code>

4. Now install the dependencies by running this command in the terminal:

    <code>npm install</code>

5. To open MARS, run this next command which will open the native application in Electron:

    <code>npm run start-dev-watch</code>

    Electron will open, and you should be able to see the MARS application. If you don't see the MARS homepage, you may need to wait a couple of minutes for the app to build, and then you can press command+R (for MAC) on electron to refresh the browser.

<i>Note: MARS is currently in the development stage, so MARS uses SESAR’s test database and there may be developer tools visible to you.</i>
