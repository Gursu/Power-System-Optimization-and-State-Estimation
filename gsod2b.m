%V2 = 1;
%delta2 = 0;

P2_sch = -0.6;
Q2_sch = -0.3;

P2_cal = V2 * 4 * cos(pi/2 - delta2);
Q2_cal = 4 * V2^2 -V2 * 4 * sin(pi/2 - delta2);

F = [P2_sch - P2_cal ; Q2_sch - Q2_cal];

J11 = 4*V2*sin(pi/2-delta2); 
J12 = 4*cos(pi/2-delta2); 
J21 = 4*V2*cos(pi/2-delta2); 
J22 = 8*V2 - 4*sin(pi/2-delta2);

J = [J11 J12 ; J21 J22];

deltaX = inv(J) * F;

delta2 = delta2 + deltaX(1);
V2 = V2 + deltaX(2);

V2, delta2*180/pi