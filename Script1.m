% Script 1 - Test instantaneous frequency estimation
clear all;
close all;

% Generate synthetic signal, going from 0.2 pi to 0.4 pi
t = 1:600;
f1 = 0.1; % freq = 0.2*pi 
f2 = 0.2; % freq = 0.4*pi
x1 = sin(2*pi*f1*t(1:200));
x2 = sin(2*pi*f2*t(201:end));
x = [x1(:); x2(:)];
y = awgn(x,20); 

figure
plot(t,x,t,y);
