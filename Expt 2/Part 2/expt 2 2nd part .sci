clc
clear
H=syslin("d",[45+6*%s+%s^2],[20+3*%s+%s^2+4*%s^3])
disp('The given transfer function H =',H)
[z,p,k]=tf2zp(H)
disp('The obtained zeros for the given transfer function z = ',z);
disp('The obtained poles for the given transfer function p = ',p);
disp('The obtained system gain for the given transfer function k = ',k)
