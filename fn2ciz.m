sayX=0;
for x=-2:0.1:2
	sayY=0;
	
	sayX = sayX + 1; 
	for y=1:0.1:3
		sayY = sayY + 1;
		kX(sayX, sayY) = x; 
		kY(sayX, sayY) = y;
		kZ(sayX, sayY) = fn2(x, y);
	end
end

surf(kX,kY,kZ);