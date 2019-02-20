function problem_d(dataset1,dataset2,freqs,smps,fs)
%Form Burg (Harmonic) PSD estimates. Use model orders of 5, 15, and 30.
%   dataset1: noise-free signal
%   dataset2: noised signal
%      freqs: frequency intervals
%       smps: PSD points
%         fs: sample frequency

%% noise-free signal
%model order is 5
[h,w,pw] = f_burg(dataset1,5,smps,fs);
figure(1)
fig = plot(freqs, db(abs(fftshift(h)).^2/ fs * pw));
title('Burg PSD estimates of noise-free data of baised correlation and p=5');
xlabel('Frenquncy f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Burg PSD estimates of noise-free data of baised correlation and p=5.jpg');

%model order is 15
[h,w,pw] = f_burg(dataset1,15,smps,fs);
figure(2)
fig = plot(freqs, db(abs(fftshift(h)).^2/ fs * pw));
title('Burg PSD estimates of noise-free data of baised correlation and p=15');
xlabel('Frenquncy f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Burg PSD estimates of noise-free data of baised correlation and p=15.jpg');
 
%model order is 15
[h,w,pw] = f_burg(dataset1,15,smps,fs);
figure(3)
fig = plot(freqs, db(abs(fftshift(h)).^2/ fs * pw));
title('Burg PSD estimates of noise-free data of baised correlation and p=30');
xlabel('Frenquncy f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Burg PSD estimates of noise-free data of baised correlation and p=30.jpg');

 
%% noised data
%model order is 5
[h,w,pw] = f_burg(dataset2,5,smps,fs);
figure(4)
fig = plot(freqs,db(abs(fftshift(h)).^2/ fs * pw));
title('Burg PSD estimates of noised data of baised correlation and p=5');
xlabel('Frenquncy f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Burg PSD estimates of noised data of baised correlation and p=5.jpg');

%model order is 15
[h,w,pw] = f_burg(dataset2,15,smps,fs);
figure(5)
fig = plot(freqs, db(abs(fftshift(h)).^2/ fs * pw));
title('Burg PSD estimates of noised data of baised correlation and p=15');
xlabel('Frenquncy f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on; 
saveas(fig,'Burg PSD estimates of noised data of baised correlation and p=15.jpg');

%model order is 30
[h,w,pw] = f_burg(dataset2,30,smps,fs);
figure(6)
fig = plot(freqs, db(abs(fftshift(h)).^2 / fs * pw));
title('Burg PSD estimates of noised data of baised correlation and p=30');
xlabel('Frenquncy f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Burg PSD estimates of noised data of baised correlation and p=30.jpg');

end
