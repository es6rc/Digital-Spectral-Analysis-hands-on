function [a,pw] = f_cov(dataset,P)
%     dataset: input signal data
%           P: model order
%           a: output AR parameters
%          pw: noise variance

y = dataset;
N = length(dataset);
r=zeros(P+1,1);
for i = 0 : P
   r(i+1)=y(1:N-i)*y(i+1:N)'/ N;
end
% form the y vector and Y matrix given 
% with the first and the last n rows removed
y1=y(P+1:N);
Y1=toeplitz(y(P:N-1), y(P:-1:1).');
 
% compute the AR coffecients
%a= - inv(Y1'*Y1)*Y1'*y1';
a = -Y1\y1';
 
% compute the noise variance
pw=norm(Y1*a+y1)^2/(N-P);
 
a=[1;a];
end