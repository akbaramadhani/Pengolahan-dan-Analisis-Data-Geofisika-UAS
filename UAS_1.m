f = 100;% frekuensi gelombang
A = 10;% amplitudo
recl = 3/f;% panjang rekaman (record length)
% ===== Membuat gelombang 100 Hz =======================================
Fss = 10000;
Tss = 1/Fss;
tt = 0:Tss:recl;
xx = A*sin(2*pi*f*tt);
subplot(4,1,1)
plot(tt,xx, 'LineWidth',2), grid on % plot gelombang & panjang rekaman
xlabel('\fontsize{12} Panjang rekaman dalam satuan waktu, (detik)');
ylabel('\fontsize{12} Amplitudo');
title('\fontsize{14} Gelombang berfrekuensi 100 Hz');
% ===== Membuat data sampling =========================================
Fs = 300;% frekuensi sampling
Ts = 1/Fs;% periode sampling
t = 0:Ts:recl;% waktu sampling
x = A*sin(2*pi*f*t);% fungsi gelombang
subplot(4,1,2)
stem(t,x,'or','LineWidth',2), grid on % plot nomor sampling vs waktu
hold on;
plot(tt,xx,'LineWidth',2)
xlabel('\fontsize{12} Data sampling dalam waktu, (detik)');
ylabel('\fontsize{12} Amplitudo');
subplot(4,1,3)
stem(x,'or','LineWidth',2), grid on
% plot nomor sampling
axis([1 length(t) -A A])
xlabel('\fontsize{12} Nomor sampling');
ylabel('\fontsize{12} Amplitudo');
subplot(4,1,4)
plot(t,x,'LineWidth',2), grid on
% plot gelombang & panjang rekaman
xlabel('\fontsize{12} Hasil rekonstruksi sesuai jumlah sampling');
ylabel('\fontsize{12} Amplitudo');
Fs = 250;% frekuensi sampling diturunkan