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
x = [2	4	6	7	3	1	6	9	3	1	5	8	9	4	5	7	2	8	3];
y = [4	2	8	3	9	5	2	1	6	4	2	9	7	6	2	2	6	1	8];

%matriks
G = [1,2,4;1,4,2;1,6,8;1,7,3;1,3,9;1,1,5;1,6,2;1,9,1;1,3,6;1,1,4;1,5,2;1,8,9;1,9,7;1,4,6;1,5,2;1,7,2;1,2,6;1,8,1;1,3,8];
d = [12.6;16.2;24.4;15.8;26.0;14.6;30.4;32.5;28.6;20.0;18.8;42.8;48.2;34.6;27.9;25.6;30.4;20.2;22.8];
m = [m1,m2,m3];

%matriks transpose
Gt = G';

% mencari m dari GtGm = Gtd
format Long
m = inv(Gt*G)*(Gt*d);
m1 = m (1,1);
m2 = m (2,1);
m3 = m (3,1);

figure(1)
plot (x,y,'b*');
grid;
xlabel('x value(m)');
ylabel('y value (m)');

figure(2)
plot(m);
