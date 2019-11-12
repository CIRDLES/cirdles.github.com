---
layout: project-page
help: topsoil
title: How to Use Topsoil
category: Help
reference: Using_Topsoil
---

Before doing anything, you will need to install the most recent version of Java.

1.	Download the most recent version of Java [here](https://www.java.com/download/).
2.	Run the installer and follow the on-screen instructions. Once the Java installation is complete, proceed.

<font size="4"><b>Using a JAR file:</b></font>

3.	Download the Topsoil JAR file from the GitHub repository’s [releases page](https://github.com/CIRDLES/Topsoil/releases).
4.	Open Topsoil by double-clicking/running the JAR file.

<font size="4"><b>Compiling a JAR from the source code:</b></font>

3.	Download a copy of the source code from GitHub
4.	In the main directory “Topsoil”, open up a command prompt or terminal and run the command ./gradlew build. This will download all of the necessary dependencies as well as collect all of the resource files.
5.	Run the command ./gradlew jarWithDependencies. This will generate a jar file in the directory Topsoil/app/libs called topsoil-v[version number].jar

If you’re using an integrated development environment (IDE), the project import process will depend on which one you have. Topsoil uses <a href="https://gradle.org">Gradle</a> as a build tool. The main class of Topsoil is located in <a href="https://github.com/CIRDLES/Topsoil/tree/master/app/src/main/java/org/cirdles/topsoil/app">Topsoil/app/src/main/java/org/cirdles/topsoil/app/</a> and is called <a href="https://github.com/CIRDLES/Topsoil/blob/master/app/src/main/java/org/cirdles/topsoil/app/MainWindow.java">MainWindow.java</a>.
