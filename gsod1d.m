gsod1c;

Sbaz = 100; % MVA olarak baz gücü

% Hat akışlarının ve hat kayıplarının hesaplanması

I12 = y12 * (V1 - V2);
I21 = -I12;

I13 = y13 * (V1 - V3);
I31 = -I13;

I23 = y23 * (V2 - V3);
I32 = -I23;

S12 = V1 * conj(I12); P_akis(1, 2) = real(S12); Q_akis(1, 2) = imag(S12);
S21 = V2 * conj(I21); P_akis(2, 1) = real(S21); Q_akis(2, 1) = imag(S21);

S13 = V1 * conj(I13); P_akis(1, 3) = real(S13); Q_akis(1, 3) = imag(S13);
S31 = V3 * conj(I31); P_akis(3, 1) = real(S31); Q_akis(3, 1) = imag(S31);

S23 = V2 * conj(I23); P_akis(2, 3) = real(S23); Q_akis(2, 3) = imag(S23);
S32 = V3 * conj(I32); P_akis(3, 2) = real(S32); Q_akis(3, 2) = imag(S32);

Skay12 = S12 + S21;
Skay13 = S13 + S31;
Skay23 = S23 + S32;

Pkay(1, 2) = real(Skay12) * Sbaz;
Pkay(1, 3) = real(Skay13) * Sbaz;
Pkay(2, 3) = real(Skay23) * Sbaz;

Qkay(1, 2) = imag(Skay12) * Sbaz;
Qkay(1, 3) = imag(Skay13) * Sbaz;
Qkay(2, 3) = imag(Skay23) * Sbaz;

P_akis = P_akis * Sbaz
Q_akis = Q_akis * Sbaz

Pkay
Qkay
