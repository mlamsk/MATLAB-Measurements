% MLAMSK
% Sara Mog
% Processing wav files v2
% LAST UPDATE: 10/8/21

clear all
close all
clc

%% Read in .wav
% Need to read WAV file (44.1kHz, 32bit floating point, Mono)
% and perform THD, IM3 and FFT on them

% Read in .wav file
filename = 'THD_Test_Dirty.wav';
[y, fs] = audioread(filename); % reads data from the file named filename and returns sampled data, y, and a sample rate fo that data, fs
% fs should always be 44.1kHz

%% THD
[r, harmpow, harmFreq, peak_harmPow, peak_harmFreq] = mlamsk_THD(y,fs);

% Display the peak harmonics and the frequencies
r % THD value
peak_harmPow
peak_harmFreq 

figure(1)
scatter(peak_harmFreq, peak_harmPow)
title('Plotting Peak Harmonic Frequencies and Power')
xlabel("f [Hz]")
ylabel("dB")
text(harmFreq(1), harmpow(1), [" " num2str(harmpow(1))])

%% FFT and Plot (only positive frequencies)
[f, x_s] = mlamsk_FFT(y, fs);

figure(3)
loglog(f,x_s)
title('FFT of Input Signal')
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 10e-8 10e-1])

for i = 1:length(harmpow)
    text(harmFreq(i), 10^((harmpow(i)-6)/20), num2str(harmpow(i))) 
end

%% IM3/TOI
% Kaiser window with beta = 38, x is a real sinusoidal two ton input signal
% oip3 = toi(y,fs) % defaul of fs is 1

filename = '800Hz_1-2kHz_20dB_NeuralPi_Test.wav';
[y, fs] = audioread(filename);

[f, x_s] = mlamsk_FFT(y, fs);

figure(4)
loglog(f,x_s), title('FFT of TOI')
axis([50 20e3 10e-8 10e-1])
xlabel("f, [Hz]")
ylabel("Amplitude")


[myTOI,Pfund,Ffund,Pim3,Fim3] = toi(y);


%%
clear all

measurmentData = dir("./Measurement_Audio_Files/**");
measurmentData = measurmentData(~[measurmentData.isdir]);

% THD = zeros(length(measurmentData),1);
% IM3 = zeros(length(measurmentData),1);
% Pink = zeros(length(measurmentData),1);
THD = struct;
THD_index = 1;
IM3 = struct;
IM3_index = 1;

for i = 1:length(measurmentData)
    disp(measurmentData(i).folder)
    [y, fs] = audioread(fullfile(measurmentData(i).folder, measurmentData(i).name));
    [f, x_s] = mlamsk_FFT(y, fs);
    
    if contains(measurmentData(i).folder, "THD")
        THD(THD_index).folder = measurmentData(i).folder;
        THD(THD_index).name = measurmentData(i).name;
        
        [r, harmPow, harmFreq, peak_harmPow, peak_harmFreq] = mlamsk_THD(y,fs);
        disp(r)    
        
        figure
        loglog(f,x_s)
        title(strcat('FFT of: ', THD(THD_index).name), 'Interpreter', 'none')
        xlabel("f, [Hz]")
        ylabel("Amplitude")
        axis([50 20e3 10e-8 10e-1])
        
%         for n = 1:length(harmPow)
%             text(harmFreq(n), 10^((harmPow(n))/10), num2str(harmPow(n))) 
%         end
        
        THD(THD_index).r = r;
        THD(THD_index).harmPow = harmPow;
        THD(THD_index).harmFreq = harmFreq;
        THD(THD_index).peak_harmpow = peak_harmPow;
        THD(THD_index).peak_harmFreq = peak_harmFreq;
        
        THD_index = THD_index +1;
        
    elseif contains(measurmentData(i).folder, "IM3")
        IM3(IM3_index).folder = measurmentData(i).folder;
        IM3(IM3_index).name = measurmentData(i).name;

        figure
        loglog(f,x_s)
        title(strcat('FFT of TOI for:',IM3(IM3_index).name), 'Interpreter', 'none')
        axis([50 20e3 10e-8 10e-1])
        xlabel("f, [Hz]")
        ylabel("Amplitude")


        [myTOI,Pfund,Ffund,Pim3,Fim3] = toi(y);
        
        IM3(IM3_index).TOI = myTOI;
        IM3(IM3_index).Pfund = Pfund;
        IM3(IM3_index).Ffund = Ffund;
        IM3(IM3_index).Pim3 = Pim3;
        IM3(IM3_index).Fim3 = Fim3;
        
    elseif contains(measurmentData(i).folder, "Pink")
        disp("Pink")
    
    end
end


%%

[clean6db, clean_fs] = audioread("./Measurement_Audio_Files/Clean_Test_Signals/Pink/Pink_6dB_Clean.wav");
[hardware6db, hardware_fs] = audioread("./Measurement_Audio_Files/LPB1_Hardware_Output_Signals/Pink/Pink_6dB_LPB1_Hardware.wav");
[neuralpi6db, neural_fs] = audioread("./Measurement_Audio_Files/NeuralPi_Dummy_Data/Pink/Pink_6dB_NeuralPi_Test.wav");
[spice6db, spice_fs] = audioread("./Measurement_Audio_Files/LPB1_Spice_Output_Signals/Pink/pink_6db_dirty.wav");

[clean_f, clean_s] = mlamsk_FFT(clean6db, clean_fs);
[hardware_f, hardware_s] = mlamks


