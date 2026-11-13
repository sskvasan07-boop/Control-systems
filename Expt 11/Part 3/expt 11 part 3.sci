clear; clc;

// Close graphics windows only if they exist
w = winsid();
if w <> [] then
    close(w); // Replaced xdel(w) with close(w)
end

// Define s
s = %s;

// Parameters
T1 = 5;
T2 = 10;
K = 1;

// Transfer function denominator
den = (T1*s + 1) * (T2*s + 1);

// Create continuous-time transfer function
GH = syslin('c', K, den);

// Display transfer function
disp(GH, "The given transfer function G(s)H(s)=");

// Draw Nyquist plot
nyquist(GH, -1000, 1000);

// Add grid
xgrid();

// Graph settings
a = gca();
a.clip_state = "on";
a.data_bounds = [-0.3 -0.8; 1.3 0.8];
a.box = "on";
