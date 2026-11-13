clc;
clear;
s = %s;
// Transfer function
G = syslin('c', 10, s + 0.6*s^2 + 0.05*s^3);
disp(G, "The given transfer function is G(s)=");
// Frequency in rad/sec
omega = 0.1:0.1:100;
// Convert rad/sec to Hz for repfreq()
f = omega/(2*%pi);
// Frequency response
repf = repfreq(G, f);
// Magnitude and phase
r = abs(repf);
theta = atan(imag(repf), real(repf));
// Clear/create graphics window
scf(0);
clf();
// Polar plot
polarplot(theta, r, style=2);
