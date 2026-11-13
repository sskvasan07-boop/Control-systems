clc;
clear;
s = poly(0, 's');
// State-space matrices
A = [0 1;
 -6 -5];
B = [0;
 1];
C = [8 1];
// Identity matrix
[n1, n2] = size(A);
I = eye(n1, n2);
// X = sI - A
X = s*I - A;
// Inverse of X
phi = inv(X);
// Transfer function T(s) = C(sI-A)^(-1)B
Y = C * phi;
Z = Y * B;
// Simplify result
Z = clean(Z);
// Display transfer function
disp(Z, "The transfer function representation of system is T(S)=");
