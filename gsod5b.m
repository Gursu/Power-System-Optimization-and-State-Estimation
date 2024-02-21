function y = gsod5b(x_alt,x_ust)
%Altýn bölme aramasý

R = (sqrt(5) - 1)/2;
hata = 0.001;

H = x_ust - x_alt;	
x1 = x_alt + R * H;
x2 = x_ust - R * H;
	
fx_alt = -gsod6_out1(x_alt);	
fx_ust = -gsod6_out1(x_ust);	
fx1 = -gsod6_out1(x1);
fx2 = -gsod6_out1(x2);

dongu = 1;

while dongu == 1	
	
	if( fx1 < fx2 )
	
		x_ust = x1; fx_ust = fx1;		
		x1 = x2; fx1 = fx2;
		
		H = x_ust - x_alt;
		x2 = x_ust - R * H;
		fx2 = -gsod6_out1(x2);		
		
	else
	
		x_alt = x2; fx_alt = fx2;
		x2 = x1; fx2 = fx1;
		
		H = x_ust - x_alt;
		x1 = x_alt + R * H;
		fx1 = -gsod6_out1(x1);
	
	end
	
	if x_ust - x_alt <= hata
		dongu = 0;
	end

end

if fx1 >= fx2
	y = x1
	fx1
else
	y = x2
	fx2
end

end