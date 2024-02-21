sayac = 0;

for p = 1:500

	pasif = 0;
	
	for q = 1:500
	
		if eksenX(q) < eksenX(p) && eksenY(q) < eksenY(p)
		
			pasif = 1;
		
		end
	
	end
	
	if pasif == 0
	
		sayac = sayac + 1;
		pareto(sayac) = p;
	
	end

end

pareto
length(pareto)

plot(eksenX, eksenY, 'linestyle', 'none', 'marker', 'o', 'MarkerFaceColor', [.19 0.13 1]);
hold on;

for p = 1:length(pareto)

	plot(eksenX(pareto(p)), eksenY(pareto(p)), 'linestyle', 'none', 'marker', 'o', 'MarkerFaceColor', [1 0 0], 'MarkerSize',10 );
	hold on;
	
end

hold off;

%