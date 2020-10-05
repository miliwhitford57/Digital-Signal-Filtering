%Convolve the noisy signal with the filter coeeficients to get the 
y = conv(hn,noisySig);
%convert back to frequency domain
[Y,z] = DTFT(y,0);
figure(4);
YdB = 20*log(Y);
plot(z,YdB);
title('DTFT of filtered Noisy Signal (N = 101)');
xlabel('Frequency (rad/sec)');
ylabel('Filter Coefficient Magnitude');