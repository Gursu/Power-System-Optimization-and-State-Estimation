pkg load statistics %GNU Octave
Nm = 5; %ölçüm sayısı: number of measurements
Ns = 3; %durum değişkenleri sayısı: number of states

alfa = 0.01;

z
z-e
e = [z(1)-x(2); z(2)-x(3); z(3)-(25/6*x(3)^2-4*x(3)*x(2)*cos(x(1))); z(4)-(-4*x(3)*x(2)*sin(x(1))); z(5)-(4*x(2)^2-4*x(3)*x(2)*cos(x(1)))]

sum(inv(R)*(e.^2))
chi2inv(1-alfa,Nm-Ns)