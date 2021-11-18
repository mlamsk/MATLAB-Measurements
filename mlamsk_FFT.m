function [f, x_s] = mlamsk_FFT(x, fs)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
L = length(x);
n = pow2(nextpow2(L));
x_dft = fft(x,n);
x_s = abs(fftshift(x_dft))/n;
% Notice the split for only Post freq
f = (0:n/2)*(fs/n);
x_s = x_s(length(x_s)/2:length(x_s), :);

end

