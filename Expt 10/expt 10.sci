clc;
clear;
// ==========================================
// FUNCTION: ROOT LOCUS
// ==========================================
function root1(G, box, text)
 evans(G);
 xgrid();
 a = gca();
 if box ~= 0 then
 a.box = "on";
 a.data_bounds = box;
 end
 // Remove legend block
 a.children(1).visible = "off";
 xtitle(text);
endfunction
// ==========================================
// MAIN PROGRAM
// ==========================================
// Laplace variable
s = %s;
// Given transfer function
G = syslin("c", 1, s*(s+1)*(s^2 + 4*s + 13));
// Display transfer function
disp(G, "The given transfer function G(s) =");
// Root locus
root1(G, [-6 -6; 6 6], ...
"Root locus plot for the given transfer function G(s)=1/s(s+1)(s^2+4s+13)");
