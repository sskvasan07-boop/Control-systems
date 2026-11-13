clear;
clc;
mode(0);
s = %s;
// Characteristic equation
H = s^5 + 7*s^4 + 6*s^3 + 42*s^2 + 8*s + 56;
disp(H, "The given characteristics equation 1-G(s)H(s)=");
// Routh table
r = routh_t(H);
disp(r, "Rouths table=");
// Check first column for sign changes
[nr, nc] = size(r);
x = 0;
for i = 1:nr
 if r(i,1) < 0 then
 x = x + 1;
 end
end
if x >= 1 then
 printf("From Rouths table, it is clear that the system is unstable.\n");
else
 printf("From Rouths table, it is clear that the system is stable.\n");
end
