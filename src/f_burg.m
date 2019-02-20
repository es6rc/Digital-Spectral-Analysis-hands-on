function [h, v, E] = f_burg(dataset,p,smps,fs) 
ef = dataset;
eb = dataset;
N = length(dataset);
% Data type of 'a' should be the same as 'x' to enforce precision rules
a = 1; %#ok<*ZEROLIKE>
 
% Initial error
%E = dot(x,x)./N;
 
% Preallocate 'k' for speed.
% Data type of 'k' should be the same as signal data to enforce precision rules
k = zeros(p, 1);
E = dataset * dataset' / N;
sig2 = 0;
for m=1:p
    % Calculate the next order reflection (parcor) coefficient
    efp = ef( :, 2:end );
    ebp = eb( :, 1:end-1 );
    num = -2 * ebp * efp';
    den = efp*efp' + ebp*ebp';
    
    k(m,:) = num ./ den;
    
    % Update the forward and backward prediction errors
    ef = efp + k( m, : )*ebp;
    eb = ebp + k( m, : )*efp;
    
    % Update the AR coeff.
    a=[a;zeros(1,1)] + k(m,:)*[zeros(1,1);conj(flipud(a))];
    
    % Update the prediction error
    E = (1 - conj(k(m,:))*k(m,:))* E;
  
end
 
[h,v] = freqz(1,a,smps,fs,'whole');

end
