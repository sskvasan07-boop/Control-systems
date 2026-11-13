clc;
clear;
// Gain
k = 10;
// Laplace variable
s = %s;
// Numerator
num = poly([1], "s", "coeff");
// Denominator
den = poly([0 1 0.6 0.05], "s", "coeff");
// Transfer function
s1 = syslin("c", num, den);
G = k * s1;
// Display transfer function
disp(G, "The given transfer function G(s) =");
// Bode plot
bode(G, 0.01, 1000);
xtitle("Bode plot of the given transfer function G(s)");
// Gain margin and frequency
[g, frp] = g_margin(G);
// Phase margin and frequency
[p, frg] = p_margin(G);
// Show gain and phase margins on Bode plot
show_margins(G);
// Display results
disp(frg, "Gain crossover frequency =");
disp(p, "Phase margin (degrees) =");
disp(frp, "Phase crossover frequency =");
disp(g, "Gain margin (dB) =")
