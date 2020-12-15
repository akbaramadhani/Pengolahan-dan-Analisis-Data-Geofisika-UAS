%soal kedua

clear
clc

%const
m1 = ' real';
m2 = 'real';
m3 = 'real';
z = 'real';
v = 'real';
a = 'real';

%data tabel
X = [ 120 180 240 300 360 420];%offset
t = [0.7554 0.7604 0.7658 0.7716 0.7778 0.7844];%traveltime

%matriks
G = [1,120,14400;1,180,32400;1,240,57600;1,300,90000;1,360,129600;1,420,176400];
d = [0.57062916;0.57820816;0.58644964;0.59536656;0.60497284;0.61528336];
m = [m1,m2,m3];

%matriks transpose
Gt = G';

% mencari m dari GtGm = Gtd
format Long
m = inv(Gt*G)*(Gt*d);
m1 = m (1,1);
m2 = m (2,1);
m3 = m (3,1);

%plot data observasi
plot(X,t);
grid;
xlabel('offset value(m)');
ylabel('Travel Time (s)');
title('\fontsize{14} Graphic Data ');
legend(' x= Offset Value (m)',' y= Travel Time (s)');

%jawaban
v =sqrt(1/m3); % nilai kecepatan gelombang seismik
z = sqrt((m1*(v^2))/4); % nilai reflektor mendatar terhadap permukaan
a = asind((m2*(v^2))/(4*z));%sudut kemiringan reflektor ( dalam derajat )

