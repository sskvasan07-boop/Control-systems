clc;
clear;
// Laplace variable
s = %s;
// Given transfer function
G = syslin("c", 20*(s^2 + s + 0.5), s*(s + 1)*(s + 10));
// Display transfer function
disp(G, "The given transfer function G(s) =");
// Create graphics window
a = gca();
a.clip_state = "on";
// Nyquist plot
nyquist(G, -1000, 1000);
// Grid
xgrid(color("gray"));
// Set axis limits
a.data_bounds = [-1 -3; 3 3];
// Box around graph
a.box = "on";
// Title
xtitle("Nyquist plot");
