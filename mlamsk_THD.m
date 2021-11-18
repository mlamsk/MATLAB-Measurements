function [r, harmpow, harmFreq, peak_harmpow, peak_harmFreq] = mlamsk_THD(y,fs)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n = 7; % number of harmonics
[r, harmpow, harmFreq] = thd(y, fs, n); % returns THD in dBc of the real-values sinusoidal signal y, specifies the sample rate, fs, and the number of harmonics, n


peak_harmpow = [];
peak_harmFreq = [];
j = 1;

for i=1:length(harmpow)
    if harmpow(i) > min(harmpow)/2
        peak_harmpow(j) = harmpow(i);
        peak_harmFreq(j) = harmFreq(i);
        j = j+1;
    end
end

end

