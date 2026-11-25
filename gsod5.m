function y = gsod5(amac, x_alt,x_ust)
% function y = gsod5(amac, x_alt,x_ust)
% x_alt: alt sınır (x)
% x_ust: üst sınır (x)
% amac: amaç fonksiyonu (objective function)
% y: çözüm değeri (x)
%
% Altın bölme araması (Golden section search)
% max değeri buluyor.
%
% Örnek:
% 0-4 aralığında fn1 amaç fonks. için:
% >> y = gsod5(@fn1, 0, 4)

R = (sqrt(5) - 1)/2;
hata = 0.001;

H = x_ust - x_alt;
x1 = x_alt + R * H;
x2 = x_ust - R * H;

fx_alt = amac(x_alt);
fx_ust = amac(x_ust);
fx1 = amac(x1);
fx2 = amac(x2);

dongu = 1;

while dongu == 1

    if( fx1 < fx2 )

        x_ust = x1; fx_ust = fx1;
        x1 = x2; fx1 = fx2;

        H = x_ust - x_alt;
        x2 = x_ust - R * H;
        fx2 = amac(x2);

    else

        x_alt = x2; fx_alt = fx2;
        x2 = x1; fx2 = fx1;

        H = x_ust - x_alt;
        x1 = x_alt + R * H;
        fx1 = amac(x1);

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
