pkg load statistics %GNU Octave

z1=[9.01; 3.02; 6.98; 5.01];
z2=[9.01; 3.02; 6.98; 4.4];
z3=[9.01; 3.02; 6.98];

W(1,1)=100;
W(2,2)=100;
W(3,3)=50;
W(4,4)=50;

H1=[0.625 -0.125;-0.125 0.625;0.375 0.125;0.125 0.375];
H2=[0.625 -0.125;-0.125 0.625;0.375 0.125;0.125 0.375];
H3=[0.625 -0.125;-0.125 0.625;0.375 0.125];

W1 = W;
W2 = W;
W3 = W(1:3, 1:3);

% Kullanıcı ölçüm senaryosu seçecek.
z = z2;
W = W2;
H = H2;

Nm = length(z);

G=H'*W*H;

x_kes=inv(G)*H'*W*z
z_kes=H*x_kes
[z,z_kes,z-z_kes]
hataKareToplam = sum(W*[z-z_kes].^2)

Ns = length(x_kes);
k = Nm - Ns;

if hataKareToplam < chi2inv(0.99, k)
  display("Kestirim TUTARLI, ölçüm DOĞRU!");
else
  display("Kestirim TUTARLI DEĞİL, ölçümde HATA VAR!");
end
