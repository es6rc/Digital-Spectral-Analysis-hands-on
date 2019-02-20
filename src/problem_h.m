function problem_h(dataset1,dataset2,freqs,smps)
% (h) Form MUSIC PSD estimates. Use model orders of 5, 15, and 30. Try three different values for the number of signal space vectors.





%% p =5
N = length(dataset1);
x= dataset1;
p = 5; % this is the model order
Num    = length(x)+2*p-2;
x    = x(:);
xpad = [zeros(p-1,1);x;zeros(p-1,1)];
for  i=1:p
    Xtempe(:,i)=xpad(p-i+1:Num-i+1);
end;


R = Xtempe'*Xtempe/N; % R is repalce when order changes;


N = 4; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(1)

fig = plot(freqs,(Px));
title('Music of un-noised data, p=5, signal = 4');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of un-noised data, p=5, signal = 4.jpg');



N = 3; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(2)

fig = plot(freqs,(Px));
title('Music of un-noised data, p=5, signal = 3');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of un-noised data, p=5, signal = 3.jpg');


N = 2; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(3)

fig = plot(freqs,(Px));
title('Music of un-noised data, p=5, signal = 2');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of un-noised data, p=5, signal = 2.jpg');







%% p =15
p = 15; % this is the model order
Num    = length(x)+2*p-2;
clearvars Xtempe;

xpad = [zeros(p-1,1);x;zeros(p-1,1)];
for  i=1:p
    Xtempe(:,i)=xpad(p-i+1:Num-i+1);
end;


R = Xtempe'*Xtempe/N; % R is repalce when order changes;


N = 14; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(4)

fig = plot(freqs,(Px));
title('Music of un-noised data, p=15, signal = 14');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of un-noised data, p=15, signal = 14.jpg');



N = 10; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(5)

fig = plot(freqs,(Px));
title('Music of un-noised data, p=15, signal = 10');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of un-noised data, p=15, signal = 10.jpg');


N = 7; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(6)

fig = plot(freqs,(Px));
title('Music of un-noised data, p=15, signal = 7');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of un-noised data, p=15, signal = 7.jpg');



%% p =30
p = 30; % this is the model order
Num    = length(x)+2*p-2;
clearvars Xtempe;

xpad = [zeros(p-1,1);x;zeros(p-1,1)];
for  i=1:p
    Xtempe(:,i)=xpad(p-i+1:Num-i+1);
end;


R = Xtempe'*Xtempe/N; % R is repalce when order changes;


N = 25; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(7)

fig = plot(freqs,(Px));
title('Music of un-noised data, p=30, signal = 25');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of un-noised data, p=30, signal = 25.jpg');



N = 20; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(8)

fig = plot(freqs,(Px));
title('Music of un-noised data, p=30, signal = 20');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of un-noised data, p=30, signal = 20.jpg');

N = 15; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(9)

fig = plot(freqs,(Px));
title('Music of un-noised data, p=30, signal = 15');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of un-noised data, p=30, signal = 15.jpg');




%% p =5
N = length(dataset2);
x= dataset2;
p = 5; % this is the model order
Num    = length(x)+2*p-2;
clearvars Xtempe;
x    = x(:);
xpad = [zeros(p-1,1);x;zeros(p-1,1)];
for  i=1:p
    Xtempe(:,i)=xpad(p-i+1:Num-i+1);
end;


R = Xtempe'*Xtempe/N; % R is repalce when order changes;


N = 4; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(10)

fig = plot(freqs,(Px));
title('Music of noised data, p=5, signal = 4');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of noised data, p=5, signal = 4.jpg');




N = 3; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(11)

fig = plot(freqs,(Px));
title('Music of noised data, p=5, signal = 3');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of noised data, p=5, signal = 3.jpg');


N = 2; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(12)

fig = plot(freqs,(Px));
title('Music of noised data, p=5, signal = 2');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of noised data, p=5, signal = 2.jpg');







%% p =15
p = 15; % this is the model order
Num    = length(x)+2*p-2;
clearvars Xtempe;

xpad = [zeros(p-1,1);x;zeros(p-1,1)];
for  i=1:p
    Xtempe(:,i)=xpad(p-i+1:Num-i+1);
end;


R = Xtempe'*Xtempe/N; % R is repalce when order changes;


N = 14; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(13)

fig = plot(freqs,(Px));
title('Music of noised data, p=15, signal = 14');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of noised data, p=15, signal = 14.jpg');




N = 10; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(14)

fig = plot(freqs,(Px));
title('Music of noised data, p=15, signal = 10');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of noised data, p=15, signal = 10.jpg');


N = 7; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(15)

fig = plot(freqs,(Px));
title('Music of noised data, p=15, signal = 7');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of noised data, p=15, signal = 7.jpg');




%% p =30
p = 30; % this is the model order
Num    = length(x)+2*p-2;
clearvars Xtempe;

xpad = [zeros(p-1,1);x;zeros(p-1,1)];
for  i=1:p
    Xtempe(:,i)=xpad(p-i+1:Num-i+1);
end;


R = Xtempe'*Xtempe/N; % R is repalce when order changes;


N = 25; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(16)

fig = plot(freqs,(Px));
title('Music of noised data, p=30, signal = 25');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of noised data, p=30, signal = 25.jpg');




N = 20; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(17)

fig = plot(freqs,(Px));
title('Music of noised data, p=30, signal = 20');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of noised data, p=30, signal = 20.jpg');


N = 15; % this is signal space size
[v,d]=eig(R);
[y,i]=sort(diag(d));
Px=0;
for j=1:p-N
    Px=Px+abs(fftshift(fft(v(:,i(j)),smps)));
end;
Px=-10*log10(Px);


figure(18)

fig = plot(freqs,(Px));
title('Music of noised data, p=30, signal = 15');
xlabel('Frenquncy (Hz)') % x-axis label
ylabel('Signal Power Spectrum Density (dB)') % y-axis label
grid on;
saveas(fig,'Music of noised data, p=30, signal = 15.jpg');

end