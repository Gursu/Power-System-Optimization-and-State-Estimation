function deger = gsod8a(x1, x2, y1, y2, parcacik_sayisi, sayacMaks)

%PSO parametreleri
omega = 0.5;
fip = 0.5;
fig = 0.5;
lr = 0.5;

%Baþlangýç deðerlerinin üretilmesi

for k = 1 : parcacik_sayisi

	x(:,k) = [x1 + (x2 - x1) * rand; y1 + (y2 - y1) * rand];
	p(:,k) = x(:,k);
	
	fx(k) = -fn2( x(1,k), x(2,k) );
	fp(k) = -fn2( p(1,k), p(2,k) );	
	
end

hareketliGIF(x(1,:),x(2,:),x1,x2,y1,y2,0);

[fg, imlec] = min(fx);
g = x(:,imlec);

for k = 1 : parcacik_sayisi

	if fp(k) < fg
	
		fg = fp(k)
		g = p(:,k)	
	
	end
	
	v(:,k) = [x1-x2+(-2*x1+2*x2)*rand; y1-y2+(-2*y1+2*y2)*rand];	

end

sayac = 0;
%sayacMaks = 100;

dongu = 1;
while dongu == 1

	sayac = sayac + 1;
	
	for k = 1 : parcacik_sayisi
		
		%x ekseni için
		rp = rand;
		rg = rand;		
		v(1,k) = omega * v(1,k) + fip * rp * (p(1,k) - x(1,k)) + fig * rg * (g(1) - x(1,k));		
		
		%y ekseni için
		rp = rand;
		rg = rand;		
		v(2,k) = omega * v(2,k) + fip * rp * (p(2,k) - x(2,k)) + fig * rg * (g(2) - x(2,k));
		
		x(:,k) = x(:,k) + lr*v(:,k);		
		fx(k) = -fn2( x(1,k), x(2,k) );
		
		if fx(k) < fp(k)
		
			p(:,k) = x(:,k);
			fp(k) = -fn2( p(1,k), p(2,k) );
			
			if fp(k) < fg
			
				g = p(:,k)
				fg = -fn2( g(1), g(2) )
			
			end
			
		end
		
	end
	
	if sayac == sayacMaks
		dongu = 0;
		hareketliGIF(x(1,:),x(2,:),x1,x2,y1,y2,2);		
	else
		hareketliGIF(x(1,:),x(2,:),x1,x2,y1,y2,1);		
	end	

end

g
deger = fg;
		
%fxy = -gsod6_out2(x, y);
%deger = [x_opt, y_opt, fmaks]

end