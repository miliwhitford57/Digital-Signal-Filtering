%N is the numer of filter coeficients
N = 101;
n = 0:(N - 1);
n0  = (N-1)/2;
wc = 2;
[Xmax, ind_Xmax] = max(X);
%Find filter coefficents for given carrier freq
hn = (wc/pi)*sinc((wc*(n-n0))/pi);
figure(2);
stem(hn);
title('Filter Coeficients for Noisy Signal (N = 101)');
xlabel('Frequency');
ylabel('Filter Coefficient Magnitude');