say1 = 0;

X = [];
Y = [];
Z = [];

say1 = 0;
for p = 100:500
    say1 = say1 + 1;
    say2 = 0;
    for q = 0.9:0.01:1.1
        say2 = say2 + 1;
        X(say1, say2) = say1;
        Y(say1, say2) = say2;
        Z(say1, say2) = gsod6_out4(p, q);
    end
end

surf(X, Y, Z);