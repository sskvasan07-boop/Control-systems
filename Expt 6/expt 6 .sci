clc;
clear;
// Parameters
Kp = 4;
Td = 0.8;
Ti = 2;
Ki = Kp / Ti;
// Time
t = 0:0.05:3;
// Proportional control
p_step = Kp * ones(1, length(t));
p_ramp = Kp * t;
// Integral control
i_step = Ki * t;
i_ramp = (Ki/2) * t.^2;
// PI control
pi_step = p_step + i_step;
pi_ramp = p_ramp + i_ramp;
// PD control
pd_step = p_step;
pd_ramp = p_ramp + Kp * Td;
// PID control
pid_step = p_step + i_step;
pid_ramp = p_ramp + i_ramp;
// ================= PLOTS =================
// Proportional
subplot(3,2,1);
plot2d(t,p_step,style=2);
plot2d(t,p_ramp,style=3);
xtitle("Proportional control","t","y");
legend("step input","ramp input");
xgrid();
// Integral
subplot(3,2,2);
plot2d(t,i_step,style=2);
plot2d(t,i_ramp,style=3);
xtitle("Integral control","t","y");
legend("step input","ramp input");
xgrid();
// PI
subplot(3,2,3);
plot2d(t,pi_step,style=2);
plot2d(t,pi_ramp,style=3);
xtitle("Proportional integral control","t","y");
legend("step input","ramp input");
xgrid();
// PD
subplot(3,2,4);
plot2d(t,pd_step,style=2);
plot2d(t,pd_ramp,style=3);
xtitle("Proportional plus derivative control","t","y");
legend("step input","ramp input");
xgrid();
// PID
subplot(3,2,5);
plot2d(t,pid_step,style=2);
plot2d(t,pid_ramp,style=3);
xtitle("P.I.D. control","t","y");
legend("step input","ramp input");
xgrid();
