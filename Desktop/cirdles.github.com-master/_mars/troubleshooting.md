---
layout: project-page
help: mars
title: Troubleshooting
category: Help
reference: TroubleShooting
---
If the electron application does not open at all, make sure you are in the MARS directory and that you have followed all of the directions for setting up MARS

If the electron application opens but nothing shows up in the window, you will need to make sure that nothing is running in your port 8080. Open your command terminal and type the following command:

<code>lsof -n -i4TCP:8080</code>

If anything is returned, then you need to end the program that is running on that port. You may kill the program with the following command:

<code>kill -9 PID</code>

where PID is the number returned in the terminal after the previous command.
