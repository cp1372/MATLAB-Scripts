%Creates a plot of a sampled sinusoid signal
%Author: Colin Power

close all
clear all

Fs = 4000; %sampling frequency
n = 32; %number of samples created in the time T
Phi = pi/7; %phase shift of the sinusoid
Fo = 500;

figure
    %Create a vector filled with the samples to be plotted
    Wd = 2*pi*(Fo/Fs);
    Xd = zeros(1,n);
    for k=1:n
        Xd(k) = cos(Wd*k+Phi);
    end

    stem(Xd);
    xlabel('n');
    ylabel('X(n)');
    title(['Problem 1'])