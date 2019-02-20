function [a,sig2] = f_mcov(dataset,P)
%     dataset: input signal data
%           P: model order
%           a: output AR parameters
%           pw: noise variance

N = length(dataset);
y = dataset;
r=zeros(P+1,1);
for i = 0 : P
   r(i+1,:)=y(1:N-i)*y(i+1:N)'/N;
end
%r = xcorr(data1,'biased');

% form the y vector and Y matrix given in equation (3.4.14)
% with the first and the last n rows removed

Y1=toeplitz(y(P:N-1),y(P:-1:1).');

y1=[y(P+1:N)];
T = [y1',Y1];
TT=fliplr(T);
Y2 = TT(:,2:end);
y2 = TT(:,1);
% compute the AR coffecients
%a= -inv(Y1'*Y1)*Y1'*y1;

Y=[Y1;Y2];

yy = [y1';y2];

a = -Y\yy;


% compute the noise variance
sig2=norm(Y*a+yy)^2/(N-P)/2;

a=[1;a];