% Plotting Koefisien Refleksi terhadap waktu
T = [40;50;65;80]; %waktu
kr = [-0.15;0.18;-0.12;0.18]; %Koefisien Refleksi
% wavelet
f = 25; %frekuensi
t = -1:0.002:1; %Rentang Waktu
w= (1-2*pi^2*f^2*t.^2).*exp(-pi^2*f^2*t.^2); %ricker wavelet formula
% trace sintesis menggunakan konvolusi
for i = 1:length(kr)
    trace = kr*w
end 
figure (1)%ploting kr dengan T
plot(kr,T) 
set(gca, 'YDir', 'reverse')
ylabel('Waktu (s)'), xlabel('Koefisien Refleksi')
title('Koefisien Reflektivitas')
figure (2)%ploting wavelet
plot(w)
xlim([0 1000]) 
ylabel('Amplitudo')
xlabel('Time(s)')
title('Wavelet (f = 25 Hz)') 
figure (3)%ploting trace sintetis
imagesc(trace)
ylabel('Waktu(s)')
colorbar
title('Trace Sintetis')
