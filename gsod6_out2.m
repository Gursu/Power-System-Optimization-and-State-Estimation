function maliyet_toplam = gsod6_out2(x, y)
%x: Bara-4'teki generatörün aktif gücü (P4_gen)
%y: Bara-4'ün gerilim genliði, pu (V4_gen)

gsod6a;
P4 = (x - 80) / 100;
V4_gen = y;

dongu = 1;
hata = 0.0001;

while dongu == 1

	deltaX = [ abs(V2), abs(V3), abs(Q4) ];

	V2 = ( (P2 - i*Q2)/conj(V2) + y12 * V1 + y24 * V4 ) / (y12 + y24);
	V3 = ( (P3 - i*Q3)/conj(V3) + y13 * V1 + y34 * V4 ) / (y13 + y34);

	Q4 = -imag( conj(V4) * (V4 * (y24 + y34) - y24 * V2 - y34 * V3 ) );

	V4_imag = imag( ( (P4 - i*Q4)/conj(V4) + y24 * V2 + y34 * V3 ) / (y24 + y34) );
	V4_real = sqrt( V4_gen^2 - V4_imag^2 );
	V4 = V4_real + V4_imag * i;
	
	deltaX = deltaX - [ abs(V2), abs(V3), abs(Q4) ];
	if max(abs(deltaX)) < hata
		dongu = 0;
	end

end

%Bara-1 (referans bara) için güç hesabý
P1 = real( conj(V1) * (V1 * (y12 + y13) - y12 * V2 - y13 * V3 ) );
Q1 = -imag( conj(V1) * (V1 * (y12 + y13) - y12 * V2 - y13 * V3 ) );

P1_gen = P1 * 100 + 50
P4_gen = P4 * 100 + 80

maliyet_gen_1 = 200 + 5.8 * (P1_gen) + 0.009 * (P1_gen^2);
maliyet_gen_2 = 400 + 5.5 * (P4_gen) + 0.006 * (P4_gen^2);

maliyet_toplam = maliyet_gen_1 + maliyet_gen_2;

end