load('veri_gsod1.mat');

Ybara = zeros(3, 3);

% Köşegen elemanlar
Ybara(1, 1) = y12 + y13;
Ybara(2, 2) = y23 + y12;
Ybara(3, 3) = y23 + y13;

% Köşegen olmayan elemanlar
Ybara(1, 2) = -y12; Ybara(2, 1) = Ybara(1, 2);
Ybara(1, 3) = -y13; Ybara(3, 1) = Ybara(1, 3);
Ybara(2, 3) = -y23; Ybara(3, 2) = Ybara(2, 3);

Ybara

Gbara = real(Ybara);
Bbara = imag(Ybara);
tetaRad = angle(Ybara);
tetaDeg = angle(Ybara)*180/pi;
Yabs = abs(Ybara);

P1 = abs(Ybara(1,1)*V1*V1)*cos(tetaRad(1,1))+abs(Ybara(1,2)*V1*V2)*cos(tetaRad(1,2)+angle(V2)-angle(V1
))+abs(Ybara(1,3)*V1*V3)*cos(tetaRad(1,3)+angle(V3)-angle(V1))

Q1 = -(abs(Ybara(1,1)*V1*V1)*sin(tetaRad(1,1))+abs(Ybara(1,2)*V1*V2)*sin(tetaRad(1,2)+angle(V2)-angle(V1
))+abs(Ybara(1,3)*V1*V3)*sin(tetaRad(1,3)+angle(V3)-angle(V1)))
