clc
clear
H=syslin("d",[45.76+6*%s+2*%s^2],[23.28+3.1*%s+%s^2+3.796*%s^3])
disp('The given transfer function H =',H)
[z,p,k]=tf2zp(H)
disp('The obtained zeros for the given transfer function z = ',z);
disp('The obtained poles for the given transfer function p = ',p);
disp('The obtained system gain for the given transfer function k = ',k)
