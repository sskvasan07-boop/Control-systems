clc;
clear;
s = poly(0, 's');
// Transfer function H1
n1 = 2*s;
d1 = 3 + s^2;
h1 = syslin('c', n1/d1);
// Transfer function H2
n2 = 2;
d2 = s + 4;
h2 = syslin('c', n2/d2);
// Transfer function H3
n3 = 4;
d3 = s + 6;
h3 = syslin('c', n3/d3);
// Transfer function H4
n4 = s;
d4 = 1 + 2*s;
h4 = syslin('c', n4/d4);
// H3 and H4 in negative feedback
h5 = h3 /. h4;
// H1 and H5 in series
h6 = h1 * h5;
// H6 and H3 in negative feedback
h7 = h6 /. h3;
// Display final reduced transfer function
disp(h7, "Reduced transfer function T(s)=");
