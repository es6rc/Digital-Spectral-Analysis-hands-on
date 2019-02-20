N  = 128;
fs = 64;
data_length = ( N - 1 ) / fs;
t_intvl  = 1 /fs;
t  = 0 : t_intvl : data_length;
y1 = sin ( 2 * pi *10 *t);
y2 = sin ( 2 * pi *11 *t);
y3 = sin ( 2 * pi *25 *t);
dataset1 = y1 + y2 + y3;
dataset2 = awgn ( dataset1, 0 );

