clear;
clc;
s = %s;

// Given transfer function
Htf = syslin('c', s, 160 + 56*s + 14*s^2 + s^3);

// Convert transfer function to state-space model
Hss = tf2ss(Htf);

// Display complete state-space model
disp(Hss, "The obtained state space model for the given transfer function: State Equation x*=Ax+Bu, Output Equation Y=Cx+D");

// Extract A, B, C and D matrices
[A, B, C, D] = abcd(Hss);

// Display matrices separately
disp(A, "A=");
disp(B, "B=");
disp(C, "C=");
disp(D, "D=");
