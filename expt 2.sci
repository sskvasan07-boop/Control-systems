clc; clear;
Z=[2;1];P=[0;-3-%i;-3+%i];K=2.5;
disp(Z,'Enter the zeros Z = ')
disp(P,'Enter the poles P = ')
disp(K,'Enter the system gain K = ')
S=zp2tf(Z,P,K,"c")
roots(S.num)
disp(S, 'The obtained transfer function S =')
