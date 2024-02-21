R_ussu = R - Hx * inv(Gx) * Hx';
R_ussu = [R_ussu(1,1); R_ussu(2,2); R_ussu(3,3); R_ussu(4,4); R_ussu(5,5)];
R_ussu = sqrt(R_ussu);

%Standart hatalar
e_std = (1./R_ussu) .* e