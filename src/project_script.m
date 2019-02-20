clear all
close all
clc
load 'datasets.mat' %load datasets

%% plot datasets
% figure(1)
% fig = plot(t, dataset1);
% saveas(fig, 'dataset1.jpg');
% figure(2)
% fig = plot(t, dataset2);
% saveas(fig, 'dataset2.jpg');

%% set frequency interval
smps = 4096;
freqs    = -fs / 2 : fs / smps : fs/2;
freqs    = freqs(1 : smps);
%% problem_a
% problem_a(dataset1,dataset2,freqs,smps);

%% problem_b
%  problem_b(dataset1,dataset2,freqs,smps,fs);

%% problem_c
%  problem_c(dataset1,dataset2,freqs,smps,fs);

%% problem_d
%  problem_d(dataset1,dataset2,freqs,smps,fs);
 
%% problem_e
%  problem_e(dataset1,dataset2,freqs,smps,fs);

%% problem_f
%  problem_f(dataset1,dataset2,freqs,smps,fs);

%% problem_g
% u = 0.001;
% problem_g(dataset1,dataset2,freqs,smps,fs,u,'step size is 0.001')
% u = 0.01;
% problem_g(dataset1,dataset2,freqs,smps,fs,u,'step size is 0.01')
% u = 0.015;
% problem_g(dataset1,dataset2,freqs,smps,fs,u,'step size is 0.015')

%% problem_h
 problem_h(dataset1,dataset2,freqs,smps)