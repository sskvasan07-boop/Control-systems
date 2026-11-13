clc;
clear;
// Partial Fraction Residue Function
function [r,z,p] = pf_residue(N,D)
 s = %s;
 z = roots(N);
 p = roots(D);
 r = zeros(length(p),1);
 for i = 1:length(p)
 Q = pdiv(D, s-p(i));
 r(i) = horner(N,p(i)) / horner(Q,p(i));
 end
endfunction
// MAIN PROGRAM
s = %s;
N = s + 3;
Den = s^2 + 3*s + 2;
// Controllable Canonical Form
Hc = cont_frm(N,Den);
disp("Controllable form =");
ssprint(Hc);
[Ac,Bc,Cc,Dc] = abcd(Hc);
// Observable Canonical Form
Ho = syslin("c",Ac',Cc',Bc',Dc);
disp("Observable form =");
ssprint(Ho);
// Jordan Canonical Form
[r,z,p] = pf_residue(N,Den);
// For required pole order: -2, -1
A = [-2 0;
 0 -1];
B = [1;
 1];
C = [-1 2];
Hj = syslin("c",A,B,C,Dc);
disp("Jordan canonical form =");
ssprint(Hj)
