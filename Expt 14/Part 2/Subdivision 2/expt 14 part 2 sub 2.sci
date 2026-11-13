clc;
clear;
// State-space matrices
A = [0 1;
 -25 -4];
B = [1 1;
 0 1];
C = [1 0;
 0 1];
D = [0 0;
 0 0];
// Create continuous-time state-space system
H = syslin('c', A, B, C, D);
// Display complete state-space model
disp(H, "The given state model matrices are");
// Display matrices separately
disp(A, "A=");
disp(B, "B=");
disp(C, "C=");
disp(D, "D=");
// Convert state-space model to transfer-function matrix
G = clean(ss2tf(H));
// Display transfer functions
disp(G, "The obtained transfer functions are");
