%Creates multiple plots of a sampled sinusoid constructed at different frequecnies.
%The purpose of the plots are to show aliasing of a discrete time signal
%Author: Colin Power

close all
clear all

T = 20e-3; %total length of time in which the signal was sampled
Fs = 4000; %sampling frequency
n = T/(1/Fs); %number of samples created in the time T
Phi = pi/4; %phase shift of the sinusoid

%ranges of Fo as specified in the problem statement
Fo = [100, 225, 350, 475; %Part A and B
      3525, 3650, 3775, 3990; %Part C
      32100, 32225, 32350, 32475 %Part D
      ]; 

for i=1:3
    figure
    for j=1:4
        %Create a vector filled with the samples to be plotted
        Wd = 2*pi*(Fo(i,j)/Fs);
        Xd = zeros(1,n);
        for k=1:n     
            Xd(k) = sin(Wd*k+Phi);
        end

        subplot(2, 2, j); 
        stem(Xd);
        xlabel('n');
        ylabel('Xd(n)');
        title(['Fo at ',num2str(Fo(i,j)),'Hz']);
    end
end