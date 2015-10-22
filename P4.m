% Author: Colin Power
% Plots of Hanning windows using different window sizes. 
clear all
close all

N = 20;

w1 = hanning(N, 'periodic');
transpose(w1);
w2 = [w1; w1];
w3 = [w1; w1; w1];

W1 = fft(w1);
W2 = fft(w2);
W3 = fft(w3);

n = 0:1:(N-1);
figure(1),
    subplot(2, 1, 1), stem(n, w1)
    subplot(2, 1, 2), stem(n, abs(W1))

n = 0:1:(2*N-1);
figure(2),
    subplot(2, 1, 1), stem(n, w2)
    subplot(2, 1, 2), stem(n, abs(W2))

n = 0:1:(3*N-1);
figure(3),
    subplot(2, 1, 1), stem(n, w3)
    subplot(2, 1, 2), stem(n, abs(W3))
    