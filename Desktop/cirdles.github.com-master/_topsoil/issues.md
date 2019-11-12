---
layout: project-page
help: topsoil
title: Known Issues
category: Help
reference: issues
---

Here are some known issues that are present in the current release of Topsoil:

<font size="4"><b>Plot Loads to White Screen</b></font>

- This is a problem that we have experienced extensively on Windows platforms, and are researching a fix for. In the short term, try generating the plot a few more times or toggling some of the plot settings. If this doesn't work, then you'll need to restart Topsoil.

- If you are using a non-Windows machine and experience this problem, please contact us.

<font size="4"><b>Irregular Panning or Zooming in a Plot</b></font>

- If you are dragging a plot it refuses to move, or if you are zooming in/out and the plot changes the center, it is most likely because you are reaching the bounds of the plot. The plot can't go below (0, 0), so when zooming out, the plot will account for the limit being reached on one side, and the center may move. However, if you are dragging the plot and it won't move in a specific direction, it is because of a known bug in the way that the bounds of the plot are set. Although the plot will stop moving when either axis reaches zero, Topsoil <i>thinks</i> that the position of the plot is somewhere below zero. If you drag away from zero enough, eventually the plot will move again. Zooming out temporarily will make that process go faster.

<font size="4"><b>Freezing in the Evolution Matrix</b></font>

- The math required to re-draw the matrix every time it moves can take a while. We're working on optimizing the math so that the plot runs smoother.
