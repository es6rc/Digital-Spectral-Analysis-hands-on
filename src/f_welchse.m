function psd=f_welchse(dataset,hwin,S,smps,fs)
%   phi=welchse(dataset,hwin,S,smps,fs);
%
%      dataset -> the data vector 
%         hwin -> the window vector
%            S ->  shift of S samples between adjacent segments, s.t., 
%                    (j-1)S+1 is the starting point for the jth subsequence
%         smps -> the number of psd samples
%           fs -> sample frequency
%    psd <- spectral estimates at L frequencies w=-fs, -fs/smps,..., 0,...,
%    fs*(smps-1)/smps

%% function main body
N=length(dataset);     % total data length
D=length(hwin);     % length of each observations to split from y

% check the lengths
if (D > N)
   error('The window length is larger than the data length.');
   return

end

% the power of the window vector v
hwin_power = mean(hwin.^2); 
% number of subsamples
seg_number = fix((N-D+S)/S); 
%initialize
power=zeros(smps,1);

for i = 1 : seg_number
   sub = dataset((i-1)*S+1:(i-1)*S+D);
   sub=sub(:);
   power= power + (fs*abs(fft((sub.*hwin(:)),smps)/D).^2);
end

psd=power / seg_number / hwin_power ;


