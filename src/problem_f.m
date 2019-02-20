function problem_f(dataset1,dataset2,freqs,smps,fs)
%Form Modified Covariance PSD estimates. Use model orders of 5, 15, and 30.
%   dataset1: noise-free signal
%   dataset2: noised signal
%      freqs: frequency intervals
%       smps: PSD points
%         fs: sample frequency

%% noise-free signal
%model order is 5
[a,pw] = f_mcov(dataset1,5);
[h,v] = freqz(1,a,smps,fs,'whole');

figure(1)
fig = plot(freqs,db(abs(fftshift(h)).^2* pw / fs));
title('Modified Covariance PSD estimates of noise-free data of p=5');
xlabel('Frenquncy f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Modified Covariance PSD estimates of noise-free data of p=5.png');

%model order is 15
[a,pw] = f_mcov(dataset1,15);
[h,v] = freqz(1,a,smps,fs,'whole');

figure(2)
fig = plot(freqs,db(abs(fftshift(h)).^2* pw / fs));
title('Modified Covariance PSD estimates of noise-free data of p=15');
xlabel('Frenquncy f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Modified Covariance PSD estimates of noise-free data of p=15.png');

%model order is 30
[a,pw] = f_mcov(dataset1,30);
[h,v] = freqz(1,a,smps,fs,'whole');

figure(3)
fig = plot(freqs,db(abs(fftshift(h)).^2* pw / fs));
title('Modified Covariance PSD estimates of noise-free data of p=30');
xlabel('Frenquncy f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Modified Covariance PSD estimates of noise-free data of p=30.png');



%% noised data
%model order is 5
[a,pw] = f_mcov(dataset2,5);
[h,v] = freqz(1,a,smps,fs,'whole');

figure(4)
fig = plot(freqs,db(abs(fftshift(h)).^2* pw / fs));
title('Modified Covariance PSD estimates of noise data of p=5');
xlabel('Frenquncy f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Modified Covariance PSD estimates of noise data of p=5.png');

%model order is 15
[a,pw] = f_mcov(dataset2,15);
[h,v] = freqz(1,a,smps,fs,'whole');

figure(5)
fig = plot(freqs,db(abs(fftshift(h)).^2* pw / fs));
title('Modified Covariance PSD estimates of noise data of p=15');
xlabel('Frenquncy f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Modified Covariance PSD estimates of noise data of p=15.png');


%model order is 30
[a,pw] = f_mcov(dataset2,30);
[h,v] = freqz(1,a,smps,fs,'whole');

figure(6)
fig = plot(freqs,db(abs(fftshift(h)).^2* pw / fs));
title('Modified Covariance PSD estimates of noise data of p=30');
xlabel('Frenquncy f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Modified Covariance PSD estimates of noise data of p=30.png');

end