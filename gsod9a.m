tekrar = 500;

%x1: x i�in alt s�n�r
%x2: x i�in �st s�n�r
%y1: y i�in alt s�n�r
%y2: y i�in �st s�n�r

x1 = 100; x2 = 500;
y1 = 0.95; y2 = 1.1;

prmX = [];
prmY = [];

eksenX = [];
eksenY = [];

for p = 1:tekrar

	x = x1 + (x2 - x1) * rand;	
	y = y1 + (y2 - y1) * rand;	
		
	[obj1, obj2] = gsod6_out5(x, y);
	
	prmX(p) = x;
	prmY(p) = y;	
	
	eksenX(p) = obj1;
	eksenY(p) = obj2;

end

grafik = plot(eksenX, eksenY, 'linestyle', 'none', 'marker', 'o'); 

xlim([4200, 5200]); 
ylim([0.04, 0.14]); 

xlabel('x'); 
ylabel('y'); 
grid on;

saveas(grafik, 'multiobjective_Pareto.png');