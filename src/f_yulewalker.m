function psd = f_yulewalker(dataset, P, smps, fs, string)

r = xcorr(dataset, P, string);

T = zeros(P,P);
%pyulear
for i = 1:P
    for j = 1:P
          T(i,j) = r(i-j+P+1);          
    end
end
b = -r(P+2:end);
a = T\b';

a = [1;a];

% compute the noise variance
sig2=abs(  a.'* conj(r(P+1:end))'  );

h = freqz(1,a,smps,fs,'whole');

psd = abs(h).^2/length(dataset)*sig2;