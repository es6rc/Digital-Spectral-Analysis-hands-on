function [a1,pw] = f_LMS(dataset,P,u)
%     dataset: input signal data
%           P: model order%          
%           u: adaptive step size
%          a1: output AR parameters
%          pw: noise variance

N = length(dataset);
a = zeros(N,P); % N slots, p order

% we need a inital condition
for n = P:N-1
    
    xtem = dataset(n:-1:n-P+1);
    e = dataset(n+1)+xtem*a(n,:)';
    a(n+1,:) = a(n,:) - (2*u*e*xtem')';
end

n = P;
y = dataset;
a1 = [1;a(N,:)'];
 

y1=[y(n+1:N)];
Y1=toeplitz(y(n:N-1),y(n:-1:1).');
 
% compute the noise variance
pw=norm((Y1*a(N,:)')'+y1)^2/(N-n);


end