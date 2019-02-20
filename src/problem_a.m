function problem_a(dataset1,dataset2,freqs,smps)
%   Form Blackman-Tukey PSD estimates with lags of 10 and 20.
%   Use a Hamming window and unbiased correlation estimates.
%   dataset1: noise-free signal
%   dataset2: noised signal
%      freqs: frequency intervals
%       smps: PSD points

%% set windows
%lag = 10;
L = 10;
ham = hamming(2*L+1);
win1 = ham(L+1:2*L); 
%lag = 20;
L2 = 20;
ham = hamming(2*L2 + 1);
win2 = ham(L2+1:2*L2);

%% noise-free data
%lag = 10
X1 = f_btse(dataset1,win1,smps);
figure(3);
fig = plot( freqs, db(fftshift(X1)) );
title('Blackman-Turkey PSD estimate of noise-free data with lags 10 of Hamming');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density  PSD/dB') % y-axis label
grid on;
saveas(fig,'Blackman-Turkey PSD estimate of noise-free data with lags 10 of Hamming.jpg');
%lag = 20
X2 = f_btse(dataset1,win2,smps);
figure(4);
fig = plot(freqs, db(fftshift(X2))/2);
title('Blackman-Turkey PSD estimate of noise-free data with lags 20 of Hamming');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density  PSD/dB') % y-axis label
grid on;
saveas(fig,'Blackman-Turkey PSD estimate of noise-free data with lags 20 of Hamming.jpg');


%% noised data
%lag = 10
X3 = f_btse(dataset2,win1,smps);
figure(5);
fig = plot(freqs, db(fftshift(X3)));
title('Blackman-Turkey PSD estimate of noised data with lags 10 of Hamming');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density  PSD/dB') % y-axis label
grid on;
saveas(fig,'Blackman-Turkey PSD estimate of noised data with lags 10 of Hamming.jpg');

%lag = 20
X4 = f_btse(dataset2,win2,smps);
figure(6);
fig = plot(freqs, db(fftshift(X4)));
title('Blackman-Turkey PSD estimate of noised data with lags 20 of Hamming');
xlabel('f/Hz') % x-axis label
ylabel('Signal Power Spectrum Density PSD/dB') % y-axis label
grid on;
saveas(fig,'Blackman-Turkey PSD estimate of noised data with lags 20 of Hamming.jpg');
end

