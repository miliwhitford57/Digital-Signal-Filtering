%represent noise as a timeseries and convert to the frequency domain
x = noisySig(100:1100);
M = 5000;
[X,w] = DTFT(x,M);
XdB = 20*log(X);
plot(w,XdB);
title('DTFT of Noisy Signal');
xlabel('Frequency (rad/sample)');
ylabel('Magnitude (dB)');