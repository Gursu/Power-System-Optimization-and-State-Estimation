V2 = ( (P2 - i*Q2)/conj(V2) + y12 * V1 + y24 * V4 ) / (y12 + y24)
V3 = ( (P3 - i*Q3)/conj(V3) + y13 * V1 + y34 * V4 ) / (y13 + y34)

Q4 = -imag( conj(V4) * (V4 * (y24 + y34) - y24 * V2 - y34 * V3 ) );

V4_imag = imag( ( (P4 - i*Q4)/conj(V4) + y24 * V2 + y34 * V3 ) / (y24 + y34) );
V4_real = sqrt( V4_gen^2 - V4_imag^2 );
V4 = V4_real + V4_imag * i

%Bara-1 (referans bara) için güç hesabý
P1 = real( conj(V1) * (V1 * (y12 + y13) - y12 * V2 - y13 * V3 ) );
Q1 = -imag( conj(V1) * (V1 * (y12 + y13) - y12 * V2 - y13 * V3 ) );