clc;
clear;
// Transfer function variable
s = %s;
// First-order process G(s)=1/(s+1)
Gp = syslin('c',1,s+1);
// Controller parameters
Kp = 5;
Ki = 0.5;
Kd = 2.5;
// P Controller
Cp = syslin('c',Kp,1);
Tp = Cp*Gp/(1+Cp*Gp);
// PI Controller
Cpi = syslin('c',Kp*s+Ki,s);
Tpi = Cpi*Gp/(1+Cpi*Gp);
// PID Controller
Cpid = syslin('c',Kd*s^2+Kp*s+Ki,s);
Tpid = Cpid*Gp/(1+Cpid*Gp);
// Time vector
t = 0:0.01:10;
// Step responses
yp = csim('step',t,Tp);
ypi = csim('step',t,Tpi);
ypid = csim('step',t,Tpid);
// Plot responses in different colors
clf();
plot2d(t, yp, style=2); // Red
plot2d(t, ypi, style=5); // Blue
plot2d(t, ypid, style=3); // Green
// Graph details
xtitle("P, PI and PID Controller Response","Time (sec)","Output");
legend(["P Controller","PI Controller","PID Controller"],1);
xgrid();
