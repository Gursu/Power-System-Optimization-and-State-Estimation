function deger = gsod7a(x1, x2, y1, y2, tekrar)
%Rastgele arama

%x1: x aramas� i�in alt s�n�r
%x2: x aramas� i�in �st s�n�r
%y1: y aramas� i�in alt s�n�r
%y2: y aramas� i�in �st s�n�r

fmaks = -1e+9;

for p = 1:tekrar

	x = x1 + (x2 - x1) * rand;	
	y = y1 + (y2 - y1) * rand;	
		
	fxy = fn2(x, y);
	
	if fxy > fmaks
		fmaks = fxy;
		x_opt = x;
		y_opt = y;
	end	

end

deger = [x_opt, y_opt, fmaks]

end