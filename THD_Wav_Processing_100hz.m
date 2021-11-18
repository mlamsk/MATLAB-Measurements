clear all
close all

% Continuous Parameter Model Testing
% 030 100Hz
hardware_THD_directory = './Cont_Audio_Files/Hardware_No_60/030_h';
neuralpi_THD_directory = './Cont_Audio_Files/NeuralPi/030_np';

[hardware_100Hz_6db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_030_100Hz_6dB.wav'));
[hardware_100Hz_20db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_030_100Hz_20dB.wav'));
[hardware_100Hz_40db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_030_100Hz_40dB.wav'));
[neuralpi_100Hz_6db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_030_100Hz_6dB.wav'));
[neuralpi_100Hz_20db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_030_100Hz_20dB.wav'));
[neuralpi_100Hz_40db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_030_100Hz_40dB.wav'));

hardware_100Hz_6db_THD = mlamsk_THD(hardware_100Hz_6db,fs)
hardware_100Hz_20db_THD = mlamsk_THD(hardware_100Hz_20db,fs)
hardware_100Hz_40db_THD = mlamsk_THD(hardware_100Hz_40db,fs)
neuralpi_100Hz_6db_THD = mlamsk_THD(neuralpi_100Hz_6db,fs)
neuralpi_100Hz_20db_THD = mlamsk_THD(neuralpi_100Hz_20db,fs)
neuralpi_100Hz_40db_THD = mlamsk_THD(neuralpi_100Hz_40db,fs)

[hardware_100Hz_6db_f, hardware_100Hz_6db_s] = mlamsk_FFT(hardware_100Hz_6db, fs);
[hardware_100Hz_20db_f, hardware_100Hz_20db_s] = mlamsk_FFT(hardware_100Hz_20db, fs);
[hardware_100Hz_40db_f, hardware_100Hz_40db_s] = mlamsk_FFT(hardware_100Hz_40db, fs);
[neuralpi_100Hz_6db_f, neuralpi_100Hz_6db_s] = mlamsk_FFT(neuralpi_100Hz_6db, fs);
[neuralpi_100Hz_20db_f, neuralpi_100Hz_20db_s] = mlamsk_FFT(neuralpi_100Hz_20db, fs);
[neuralpi_100Hz_40db_f, neuralpi_100Hz_40db_s] = mlamsk_FFT(neuralpi_100Hz_40db, fs);

figure
tiled = tiledlayout(3,2,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');

nexttile
semilogx(neuralpi_100Hz_6db_f, 20*log10(neuralpi_100Hz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: NeuralPi 100Hz -6db \nTHD = %e dB", neuralpi_100Hz_6db_THD);
title(title1)

nexttile
semilogx(hardware_100Hz_6db_f, 20*log10(hardware_100Hz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: Hardware 100Hz -6db \nTHD = %e dB", hardware_100Hz_6db_THD);
title(title1)

nexttile
semilogx(neuralpi_100Hz_20db_f, 20*log10(neuralpi_100Hz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: NeuralPi 100Hz -20db \nTHD = %e dB", neuralpi_100Hz_20db_THD);
title(title1)

nexttile
semilogx(hardware_100Hz_20db_f, 20*log10(hardware_100Hz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: Hardware 100Hz -20db \nTHD = %e dB", hardware_100Hz_20db_THD);
title(title1)

nexttile
semilogx(neuralpi_100Hz_40db_f, 20*log10(neuralpi_100Hz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: NeuralPi 100Hz -40db \nTHD = %e dB", neuralpi_100Hz_40db_THD);
title(title1)

nexttile
semilogx(hardware_100Hz_40db_f, 20*log10(hardware_100Hz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: Hardware 100Hz -40db \nTHD = %e dB", hardware_100Hz_40db_THD);
title(title1)

clear all
% 050 100Hz
hardware_THD_directory = './Cont_Audio_Files/Hardware_No_60/050_h';
neuralpi_THD_directory = './Cont_Audio_Files/NeuralPi/050_np';

[hardware_100Hz_6db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_050_100Hz_6dB.wav'));
[hardware_100Hz_20db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_050_100Hz_20dB.wav'));
[hardware_100Hz_40db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_050_100Hz_40dB.wav'));
[neuralpi_100Hz_6db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_050_100Hz_6dB.wav'));
[neuralpi_100Hz_20db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_050_100Hz_20dB.wav'));
[neuralpi_100Hz_40db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_050_100Hz_40dB.wav'));

hardware_100Hz_6db_THD = mlamsk_THD(hardware_100Hz_6db,fs)
hardware_100Hz_20db_THD = mlamsk_THD(hardware_100Hz_20db,fs)
hardware_100Hz_40db_THD = mlamsk_THD(hardware_100Hz_40db,fs)
neuralpi_100Hz_6db_THD = mlamsk_THD(neuralpi_100Hz_6db,fs)
neuralpi_100Hz_20db_THD = mlamsk_THD(neuralpi_100Hz_20db,fs)
neuralpi_100Hz_40db_THD = mlamsk_THD(neuralpi_100Hz_40db,fs)

[hardware_100Hz_6db_f, hardware_100Hz_6db_s] = mlamsk_FFT(hardware_100Hz_6db, fs);
[hardware_100Hz_20db_f, hardware_100Hz_20db_s] = mlamsk_FFT(hardware_100Hz_20db, fs);
[hardware_100Hz_40db_f, hardware_100Hz_40db_s] = mlamsk_FFT(hardware_100Hz_40db, fs);
[neuralpi_100Hz_6db_f, neuralpi_100Hz_6db_s] = mlamsk_FFT(neuralpi_100Hz_6db, fs);
[neuralpi_100Hz_20db_f, neuralpi_100Hz_20db_s] = mlamsk_FFT(neuralpi_100Hz_20db, fs);
[neuralpi_100Hz_40db_f, neuralpi_100Hz_40db_s] = mlamsk_FFT(neuralpi_100Hz_40db, fs);

figure
tiled = tiledlayout(3,2,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');

nexttile
semilogx(neuralpi_100Hz_6db_f, 20*log10(neuralpi_100Hz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: NeuralPi 100Hz -6db \nTHD = %e dB", neuralpi_100Hz_6db_THD);
title(title1)

nexttile
semilogx(hardware_100Hz_6db_f, 20*log10(hardware_100Hz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: Hardware 100Hz -6db \nTHD = %e dB", hardware_100Hz_6db_THD);
title(title1)

nexttile
semilogx(neuralpi_100Hz_20db_f, 20*log10(neuralpi_100Hz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: NeuralPi 100Hz -20db \nTHD = %e dB", neuralpi_100Hz_20db_THD);
title(title1)

nexttile
semilogx(hardware_100Hz_20db_f, 20*log10(hardware_100Hz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: Hardware 100Hz -20db \nTHD = %e dB", hardware_100Hz_20db_THD);
title(title1)

nexttile
semilogx(neuralpi_100Hz_40db_f, 20*log10(neuralpi_100Hz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: NeuralPi 100Hz -40db \nTHD = %e dB", neuralpi_100Hz_40db_THD);
title(title1)

nexttile
semilogx(hardware_100Hz_40db_f, 20*log10(hardware_100Hz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: Hardware 100Hz -40db \nTHD = %e dB", hardware_100Hz_40db_THD);
title(title1)

clear all
% 060 100Hz
hardware_THD_directory = './Cont_Audio_Files/Hardware_No_60/060_h';
neuralpi_THD_directory = './Cont_Audio_Files/NeuralPi/060_np';

[hardware_100Hz_6db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_060_100Hz_6dB.wav'));
[hardware_100Hz_20db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_060_100Hz_20dB.wav'));
[hardware_100Hz_40db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_060_100Hz_40dB.wav'));
[neuralpi_100Hz_6db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_060_100Hz_6dB.wav'));
[neuralpi_100Hz_20db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_060_100Hz_20dB.wav'));
[neuralpi_100Hz_40db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_060_100Hz_40dB.wav'));

hardware_100Hz_6db_THD = mlamsk_THD(hardware_100Hz_6db,fs)
hardware_100Hz_20db_THD = mlamsk_THD(hardware_100Hz_20db,fs)
hardware_100Hz_40db_THD = mlamsk_THD(hardware_100Hz_40db,fs)
neuralpi_100Hz_6db_THD = mlamsk_THD(neuralpi_100Hz_6db,fs)
neuralpi_100Hz_20db_THD = mlamsk_THD(neuralpi_100Hz_20db,fs)
neuralpi_100Hz_40db_THD = mlamsk_THD(neuralpi_100Hz_40db,fs)

[hardware_100Hz_6db_f, hardware_100Hz_6db_s] = mlamsk_FFT(hardware_100Hz_6db, fs);
[hardware_100Hz_20db_f, hardware_100Hz_20db_s] = mlamsk_FFT(hardware_100Hz_20db, fs);
[hardware_100Hz_40db_f, hardware_100Hz_40db_s] = mlamsk_FFT(hardware_100Hz_40db, fs);
[neuralpi_100Hz_6db_f, neuralpi_100Hz_6db_s] = mlamsk_FFT(neuralpi_100Hz_6db, fs);
[neuralpi_100Hz_20db_f, neuralpi_100Hz_20db_s] = mlamsk_FFT(neuralpi_100Hz_20db, fs);
[neuralpi_100Hz_40db_f, neuralpi_100Hz_40db_s] = mlamsk_FFT(neuralpi_100Hz_40db, fs);

figure
tiled = tiledlayout(3,2,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');

nexttile
semilogx(neuralpi_100Hz_6db_f, 20*log10(neuralpi_100Hz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: NeuralPi 100Hz -6db \nTHD = %e dB", neuralpi_100Hz_6db_THD);
title(title1)

nexttile
semilogx(hardware_100Hz_6db_f, 20*log10(hardware_100Hz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: Hardware 100Hz -6db \nTHD = %e dB", hardware_100Hz_6db_THD);
title(title1)

nexttile
semilogx(neuralpi_100Hz_20db_f, 20*log10(neuralpi_100Hz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: NeuralPi 100Hz -20db \nTHD = %e dB", neuralpi_100Hz_20db_THD);
title(title1)

nexttile
semilogx(hardware_100Hz_20db_f, 20*log10(hardware_100Hz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: Hardware 100Hz -20db \nTHD = %e dB", hardware_100Hz_20db_THD);
title(title1)

nexttile
semilogx(neuralpi_100Hz_40db_f, 20*log10(neuralpi_100Hz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: NeuralPi 100Hz -40db \nTHD = %e dB", neuralpi_100Hz_40db_THD);
title(title1)

nexttile
semilogx(hardware_100Hz_40db_f, 20*log10(hardware_100Hz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: Hardware 100Hz -40db \nTHD = %e dB", hardware_100Hz_40db_THD);
title(title1)

clear all
% 100 100Hz
hardware_THD_directory = './Cont_Audio_Files/Hardware_No_60/100_h';
neuralpi_THD_directory = './Cont_Audio_Files/NeuralPi/100_np';

[hardware_100Hz_6db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_100_100Hz_6dB.wav'));
[hardware_100Hz_20db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_100_100Hz_20dB.wav'));
[hardware_100Hz_40db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hz_Hardware_LPB1_100_100Hz_40dB.wav'));
[neuralpi_100Hz_6db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_100_100Hz_6dB.wav'));
[neuralpi_100Hz_20db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_100_100Hz_20dB.wav'));
[neuralpi_100Hz_40db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_100_100Hz_40dB.wav'));

hardware_100Hz_6db_THD = mlamsk_THD(hardware_100Hz_6db,fs)
hardware_100Hz_20db_THD = mlamsk_THD(hardware_100Hz_20db,fs)
hardware_100Hz_40db_THD = mlamsk_THD(hardware_100Hz_40db,fs)
neuralpi_100Hz_6db_THD = mlamsk_THD(neuralpi_100Hz_6db,fs)
neuralpi_100Hz_20db_THD = mlamsk_THD(neuralpi_100Hz_20db,fs)
neuralpi_100Hz_40db_THD = mlamsk_THD(neuralpi_100Hz_40db,fs)

[hardware_100Hz_6db_f, hardware_100Hz_6db_s] = mlamsk_FFT(hardware_100Hz_6db, fs);
[hardware_100Hz_20db_f, hardware_100Hz_20db_s] = mlamsk_FFT(hardware_100Hz_20db, fs);
[hardware_100Hz_40db_f, hardware_100Hz_40db_s] = mlamsk_FFT(hardware_100Hz_40db, fs);
[neuralpi_100Hz_6db_f, neuralpi_100Hz_6db_s] = mlamsk_FFT(neuralpi_100Hz_6db, fs);
[neuralpi_100Hz_20db_f, neuralpi_100Hz_20db_s] = mlamsk_FFT(neuralpi_100Hz_20db, fs);
[neuralpi_100Hz_40db_f, neuralpi_100Hz_40db_s] = mlamsk_FFT(neuralpi_100Hz_40db, fs);

figure
tiled = tiledlayout(3,2,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');

nexttile
semilogx(neuralpi_100Hz_6db_f, 20*log10(neuralpi_100Hz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: NeuralPi 100Hz -6db \nTHD = %e dB", neuralpi_100Hz_6db_THD);
title(title1)

nexttile
semilogx(hardware_100Hz_6db_f, 20*log10(hardware_100Hz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: Hardware 100Hz -6db \nTHD = %e dB", hardware_100Hz_6db_THD);
title(title1)

nexttile
semilogx(neuralpi_100Hz_20db_f, 20*log10(neuralpi_100Hz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: NeuralPi 100Hz -20db \nTHD = %e dB", neuralpi_100Hz_20db_THD);
title(title1)

nexttile
semilogx(hardware_100Hz_20db_f, 20*log10(hardware_100Hz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: Hardware 100Hz -20db \nTHD = %e dB", hardware_100Hz_20db_THD);
title(title1)

nexttile
semilogx(neuralpi_100Hz_40db_f, 20*log10(neuralpi_100Hz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: NeuralPi 100Hz -40db \nTHD = %e dB", neuralpi_100Hz_40db_THD);
title(title1)

nexttile
semilogx(hardware_100Hz_40db_f, 20*log10(hardware_100Hz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: Hardware 100Hz -40db \nTHD = %e dB", hardware_100Hz_40db_THD);
title(title1)

% Non-Continuous Parameter

% hardware_THD_directory = './Measurement_Audio_Files/LPB1_Hardware_Output_Signals/THD';
% neuralpi_THD_directory = './Measurement_Audio_Files/NeuralPi_Dummy_Data/THD';
% spice_THD_directory = './Measurement_Audio_Files/LPB1_Spice_Output_Signals/THD';
% 
% [hardware_100Hz_6db, fs] = audioread(fullfile(hardware_THD_directory, './100Hz_6dB_LPB1_Hardware.wav'));
% [hardware_100Hz_20db, fs] = audioread(fullfile(hardware_THD_directory, './100Hz_20dB_LPB1_Hardware.wav'));
% [hardware_100Hz_40db, fs] = audioread(fullfile(hardware_THD_directory, './100Hz_40dB_LPB1_Hardware.wav'));
% [neuralpi_100Hz_6db, fs] = audioread(fullfile(neuralpi_THD_directory, './100Hz_6dB_NeuralPi_Test.wav'));
% [neuralpi_100Hz_20db, fs] = audioread(fullfile(neuralpi_THD_directory, './100Hz_20dB_NeuralPi_Test.wav'));
% [neuralpi_100Hz_40db, fs] = audioread(fullfile(neuralpi_THD_directory, './100Hz_40dB_NeuralPi_Test.wav'));
% [spice_100Hz_6db, fs] = audioread(fullfile(spice_THD_directory, './100hz_6db_dirty.wav'));
% [spice_100Hz_20db, fs] = audioread(fullfile(spice_THD_directory, './100hz_20db_dirty.wav'));
% [spice_100Hz_40db, fs] = audioread(fullfile(spice_THD_directory, './100hz_40db_dirty.wav'));
% 
% hardware_100Hz_6db_THD = mlamsk_THD(hardware_100Hz_6db,fs)
% hardware_100Hz_20db_THD = mlamsk_THD(hardware_100Hz_20db,fs)
% hardware_100Hz_40db_THD = mlamsk_THD(hardware_100Hz_40db,fs)
% neuralpi_100Hz_6db_THD = mlamsk_THD(neuralpi_100Hz_6db,fs)
% neuralpi_100Hz_20db_THD = mlamsk_THD(neuralpi_100Hz_20db,fs)
% neuralpi_100Hz_40db_THD = mlamsk_THD(neuralpi_100Hz_40db,fs)
% spice_100Hz_6db_THD = mlamsk_THD(spice_100Hz_6db,fs)
% spice_100Hz_20db_THD = mlamsk_THD(spice_100Hz_20db,fs)
% spice_100Hz_40db_THD = mlamsk_THD(spice_100Hz_40db,fs)
% 
% [hardware_100Hz_6db_f, hardware_100Hz_6db_s] = mlamsk_FFT(hardware_100Hz_6db, fs);
% [hardware_100Hz_20db_f, hardware_100Hz_20db_s] = mlamsk_FFT(hardware_100Hz_20db, fs);
% [hardware_100Hz_40db_f, hardware_100Hz_40db_s] = mlamsk_FFT(hardware_100Hz_40db, fs);
% [neuralpi_100Hz_6db_f, neuralpi_100Hz_6db_s] = mlamsk_FFT(neuralpi_100Hz_6db, fs);
% [neuralpi_100Hz_20db_f, neuralpi_100Hz_20db_s] = mlamsk_FFT(neuralpi_100Hz_20db, fs);
% [neuralpi_100Hz_40db_f, neuralpi_100Hz_40db_s] = mlamsk_FFT(neuralpi_100Hz_40db, fs);
% [spice_100Hz_6db_f, spice_100Hz_6db_s] = mlamsk_FFT(spice_100Hz_6db, fs);
% [spice_100Hz_20db_f, spice_100Hz_20db_s] = mlamsk_FFT(spice_100Hz_20db, fs);
% [spice_100Hz_40db_f, spice_100Hz_40db_s] = mlamsk_FFT(spice_100Hz_40db, fs);
% 
% 
% figure
% tiled = tiledlayout(3,3,'TileSpacing', 'Compact', 'Padding', 'Compact');
% set(gcf,'color','w');
% 
% nexttile
% semilogx(neuralpi_100Hz_6db_f, 20*log10(neuralpi_100Hz_6db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("NeuralPi 100Hz -6db \nTHD = %e dB", neuralpi_100Hz_6db_THD);
% title(title1)
% 
% nexttile
% semilogx(hardware_100Hz_6db_f, 20*log10(hardware_100Hz_6db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Hardware 100Hz -6db \nTHD = %e dB", hardware_100Hz_6db_THD);
% title(title1)
% 
% nexttile
% semilogx(spice_100Hz_6db_f, 20*log10(spice_100Hz_6db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Spice 100Hz -6db \nTHD = %e dB", spice_100Hz_6db_THD);
% title(title1)
% 
% nexttile
% semilogx(neuralpi_100Hz_20db_f, 20*log10(neuralpi_100Hz_20db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("NeuralPi 100Hz -20db \nTHD = %e dB", neuralpi_100Hz_20db_THD);
% title(title1)
% 
% nexttile
% semilogx(hardware_100Hz_20db_f, 20*log10(hardware_100Hz_20db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Hardware 100Hz -20db \nTHD = %e dB", hardware_100Hz_20db_THD);
% title(title1)
% 
% 
% nexttile
% semilogx(spice_100Hz_20db_f, 20*log10(spice_100Hz_20db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Spice 100Hz -20db \nTHD = %e dB", spice_100Hz_20db_THD);
% title(title1)
% 
% nexttile
% semilogx(neuralpi_100Hz_40db_f, 20*log10(neuralpi_100Hz_40db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("NeuralPi 100Hz -40db \nTHD = %e dB", neuralpi_100Hz_40db_THD);
% title(title1)
% 
% nexttile
% semilogx(hardware_100Hz_40db_f, 20*log10(hardware_100Hz_40db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Hardware 100Hz -40db \nTHD = %e dB", hardware_100Hz_40db_THD);
% title(title1)
% 
% 
% nexttile
% semilogx(spice_100Hz_40db_f, 20*log10(spice_100Hz_40db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Spice 100Hz -40db \nTHD = %e dB", spice_100Hz_40db_THD);
% title(title1)


