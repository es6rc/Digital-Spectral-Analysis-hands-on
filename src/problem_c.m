function problem_c(dataset1,dataset2,freqs,smps,fs)
% Form Yule-Walker PSD estimates. Use model orders of 5, 15, and 30. 
% Use both biased and unbiased autorcorrelation estimates.
%   dataset1: noise-free signal
%   dataset2: noised signal
%      freqs: frequency intervals
%       smps: PSD points
%         fs: sample frequency
 %% noise-free signal
 
 %%biased AC estimator%%
 
%order of model is 5 
psd = f_yulewalker(dataset1,5,smps,fs,'biased');

figure(1)
fig = plot(freqs,db(fftshift(psd)));
title('Yule-Walker of noise-free data of baised correlation and p=5');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Yule-Walker of noise-free data of baised correlation and p=5.jpg');

%order of model is 15 
psd = f_yulewalker(dataset1,15,smps,fs,'biased');
figure(2)
fig = plot(freqs,db(fftshift(psd)));
title('Yule-Walker of noise-free data of baised correlation and p=15');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Yule-Walker of noise-free data of baised correlation and p=15.jpg');

%order of model is 30 
psd = f_yulewalker(dataset1,30,smps,fs,'biased');
figure(3)
fig = plot(freqs,db(fftshift(psd)));
title('Yule-Walker of noise-free data of baised correlation and p=30');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Yule-Walker of noise-free data of baised correlation and p=30.jpg');



 %%unbiased AC estimator%%
    
%order of model is 5 
psd = f_yulewalker(dataset1,5,smps,fs,'unbiased');
figure(4)
fig = plot(freqs,db(fftshift(psd)));
title('Yule-Walker of noise-free data of unbaised correlation and p=5');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Yule-Walker of noise-free data of unbaised correlation and p=5.jpg');

%order of model is 15 
psd = f_yulewalker(dataset1,15,smps,fs,'unbiased');
figure(5)
fig = plot(freqs,db(fftshift(psd)));
title('Yule-Walker of noise-free data of unbaised correlation and p=15');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Yule-Walker of noise-free data of unbaised correlation and p=15.jpg');

%order of model is 30 
psd = f_yulewalker(dataset1,30,smps,fs,'unbiased');
figure(6)
plot(freqs,db(fftshift(psd)));
title('Yule-Walker of noise-free data of unbaised correlation and p=30');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Yule-Walker of noise-free data of unbaised correlation and p=30.jpg');



%% noised signal
 %%biased AC estimator%%
%order of model is 5 
psd = f_yulewalker(dataset2,5,smps,fs,'unbiased');
figure(7)
fig = plot(freqs,db(fftshift(psd)));
title('Yule-Walker of noised dataset of baised correlation and p=5');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Yule-Walker of noised data of baised correlation and p=5.jpg');

%order of model is 15 
psd = f_yulewalker(dataset2,15,smps,fs,'unbiased');
figure(8)
fig = plot(freqs,db(fftshift(psd)));
title('Yule-Walker of noised data of baised correlation and p=15');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Yule-Walker of noised data of baised correlation and p=15.jpg');

%order of model is 30 
psd = f_yulewalker(dataset2,30,smps,fs,'unbiased');
figure(9)
fig = plot(freqs,db(fftshift(psd)));
title('Yule-Walker of noised data of baised correlation and p=30');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Yule-Walker of noised data of baised correlation and p=30.jpg');



 %%unbiased AC estimator%%
%order of model is 5 
psd = f_yulewalker(dataset2,5,smps,fs,'unbiased');
figure(10)
fig = plot(freqs,db(fftshift(psd)));
title('Yule-Walker of noised data of unbaised correlation and p=5');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Yule-Walker of noised data of unbaised correlation and p=5.jpg');

%order of model is 15 
psd = f_yulewalker(dataset2,15,smps,fs,'unbiased');
figure(11)
fig = plot(freqs,db(fftshift(psd)));
title('Yule-Walker of noised dataset of unbaised correlation and p=15');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Yule-Walker of noised data of unbaised correlation and p=15.jpg');

%order of model is 30 
psd = f_yulewalker(dataset2,30,smps,fs,'unbiased');
figure(12)
fig = plot(freqs,db(fftshift(psd)));
title('Yule-Walker of noised dataset of unbaised correlation and p=30');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Yule-Walker of noised data of unbaised correlation and p=30.jpg');

end
