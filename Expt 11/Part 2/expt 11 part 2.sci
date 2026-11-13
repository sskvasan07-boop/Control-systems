clc;
clear;
// Laplace variable
s = %s;
// Given loop transfer function
T = syslin("c", ...
 25 + 30*s + 5*s^2, ...
 168 + 206*s + 89*s^2 + 16*s^3 + s^4);
// Display transfer function
disp(T, "The given loop transfer function G(s)H(s) = ");
// Nyquist plot
nyquist(T);
// Get current axes
a = gca();
// Enable clipping
a.clip_state = "on";
// Set axis limits
a.data_bounds = [-0.1 -0.2; 0.3 0.2];
// Box around graph
a.box = "on";
// Title
xtitle("Nyquist plot");
