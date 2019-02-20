function problem_g(dataset1,dataset2,freqs,smps,fs,u,string)
% (g) Form adaptive least mean squares (LMS) PSD estimates. Use model orders of 5, 15, and 30. Try three different adaptive step sizes.
%   dataset1: noise-free signal
%   dataset2: noised signal
%      freqs: frequency intervals
%       smps: PSD points
%         fs: sample frequency
%          u: adpative step size
%     string: text step size onto images 

%% noise-free signal
%model order is 5
[a,pw] = f_LMS(dataset1, 5, u);
[h,w] = freqz(1,a,smps,fs,'whole');
 
figure(1)
fig = plot( freqs, db(abs(fftshift(h)).^2 * pw / fs) );
title(['Adaptive LMS PSD estimates of noise-free data p=5, ',string]);
xlabel('Frenquncy f/Hz' ) % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB' ) % y-axis label
grid on;
string2 = ['Adaptive LMS PSD estimates of noise-free data p=5, ' string '.jpg'];
saveas(fig, string2);
 
%model order is 15
[a,pw] = f_LMS(dataset1, 15, u);
[h,w] = freqz(1,a,smps,fs,'whole');
 
figure(2)
fig = plot( freqs, db(abs(fftshift(h)).^2 * pw / fs) );
title(['Adaptive LMS PSD estimates of noise-free data p=15, ',string]);
xlabel('Frenquncy f/Hz' ) % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB' ) % y-axis label
grid on;
string2 = ['Adaptive LMS PSD estimates of noise-free data p=15, ' string '.jpg'];
saveas(fig, string2); 

%model order is 30
[a,pw] = f_LMS(dataset1, 30, u);
[h,w] = freqz(1,a,smps,fs,'whole');
 
figure(3)
fig = plot( freqs, db(abs(fftshift(h)).^2 * pw / fs) );
title(['Adaptive LMS PSD estimates of noise-free data p=30, ',string]);
xlabel('Frenquncy f/Hz' ) % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB' ) % y-axis label
grid on;
string2 = ['Adaptive LMS PSD estimates of noise-free data p=30, ' string '.jpg'];
saveas(fig, string2);


%% noised signal
%model order is 5
[a,pw] = f_LMS(dataset2, 5, u);
[h,w] = freqz(1,a,smps,fs,'whole');
 
figure(4)
fig = plot( freqs, db(abs(fftshift(h)).^2 * pw / fs) );
title(['Adaptive LMS PSD estimates of noised data p=5, ',string]);
xlabel('Frenquncy f/Hz' ) % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB' ) % y-axis label
grid on;
string2 = ['Adaptive LMS PSD estimates of noised data p=5, ' string '.jpg'];
saveas(fig, string2);
 
%model order is 15
[a,pw] = f_LMS(dataset2, 15, u);
[h,w] = freqz(1,a,smps,fs,'whole');
 
figure(5)
fig = plot( freqs, db(abs(fftshift(h)).^2 * pw / fs) );
title(['Adaptive LMS PSD estimates of noised data p=15, ',string]);
xlabel('Frenquncy f/Hz' ) % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB' ) % y-axis label
grid on;
string2 = ['Adaptive LMS PSD estimates of noised data p=15, ' string '.jpg'];
saveas(fig, string2); 

%model order is 30
[a,pw] = f_LMS(dataset2, 30, u);
[h,w] = freqz(1,a,smps,fs,'whole');
 
figure(6)
fig = plot( freqs, db(abs(fftshift(h)).^2 * pw / fs) );
title(['Adaptive LMS PSD estimates of noise data p=30, ',string]);
xlabel('Frenquncy f/Hz' ) % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB' ) % y-axis label
grid on;
string2 = ['Adaptive LMS PSD estimates of noised data p=30, ' string '.jpg'];
saveas(fig, string2);
end