function problem_b(dataset1,dataset2,freqs,smps,fs)

% %Form Welch Periodogram PSD estimates. 
% If N samples are divided into P segments of D samples each, with a shift of S samples between adjacent segments,
% let S = 10 and 20, and let D = 32. Use a Hamming window.
%   dataset1: noise-free signal
%   dataset2: noised signal
%      freqs: frequency intervals
%       smps: PSD points
%         fs: sample frequency

%% set hamming window
D = 32;
hwin = hamming(D);

%% set shift values
 S1 = 10;
 S2 = 20;
 
%% noise-free signal
% shift of 10 samples  between adjacent segments
psd = f_welchse(dataset1,hwin,S1,smps,fs);
figure(1);
fig = plot(freqs,db(fftshift(psd)));
title('Welch PSD estimate of noise-free data with S = 10');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Welch PSD estimate of noise-free data with S = 10.jpg');

% shift of 20 samples  between adjacent segments
psd = f_welchse(dataset1,hwin,S2,smps,fs);

figure(2);
fig = plot(freqs,db(fftshift(psd))/2);
title('Welch PSD estimate of noise-free data with S = 20');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Welch PSD estimate of noise-free data with S = 20.jpg');


%% noised signal

% shift of 10 samples  between adjacent segments
psd = f_welchse(dataset2,hwin,S1,smps,fs);

figure(3);
fig = plot(freqs,db(fftshift(psd))/2);
title('Welch PSD estimate of noised data with S = 10');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Welch PSD estimate of noised data with S = 10.jpg');

% shift of 20 samples  between adjacent segments
psd = f_welchse(dataset1,hwin,S2,smps,fs);

figure(4);
fig = plot(freqs,db(fftshift(psd))/2);
title('Welch PSD estimate of noised data with S = 20');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Welch PSD estimate of noised data with S = 20.jpg');

end

