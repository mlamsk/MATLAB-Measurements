clear all
close all

% Continuous Parameter Model Testing
% 030 1kHz
hardware_THD_directory = './Cont_Audio_Files/Hardware_No_60/030_h';
neuralpi_THD_directory = './Cont_Audio_Files/NeuralPi/030_np';

[hardware_1kHz_6db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_030_1kHz_6dB.wav'));
[hardware_1kHz_20db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_030_1kHz_20dB.wav'));
[hardware_1kHz_40db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_030_1kHz_40dB.wav'));
[neuralpi_1kHz_6db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_030_1kHz_6dB.wav'));
[neuralpi_1kHz_20db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_030_1kHz_20dB.wav'));
[neuralpi_1kHz_40db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_030_1kHz_40dB.wav'));

hardware_1kHz_6db_THD = mlamsk_THD(hardware_1kHz_6db,fs)
hardware_1kHz_20db_THD = mlamsk_THD(hardware_1kHz_20db,fs)
hardware_1kHz_40db_THD = mlamsk_THD(hardware_1kHz_40db,fs)
neuralpi_1kHz_6db_THD = mlamsk_THD(neuralpi_1kHz_6db,fs)
neuralpi_1kHz_20db_THD = mlamsk_THD(neuralpi_1kHz_20db,fs)
neuralpi_1kHz_40db_THD = mlamsk_THD(neuralpi_1kHz_40db,fs)

[hardware_1kHz_6db_f, hardware_1kHz_6db_s] = mlamsk_FFT(hardware_1kHz_6db, fs);
[hardware_1kHz_20db_f, hardware_1kHz_20db_s] = mlamsk_FFT(hardware_1kHz_20db, fs);
[hardware_1kHz_40db_f, hardware_1kHz_40db_s] = mlamsk_FFT(hardware_1kHz_40db, fs);
[neuralpi_1kHz_6db_f, neuralpi_1kHz_6db_s] = mlamsk_FFT(neuralpi_1kHz_6db, fs);
[neuralpi_1kHz_20db_f, neuralpi_1kHz_20db_s] = mlamsk_FFT(neuralpi_1kHz_20db, fs);
[neuralpi_1kHz_40db_f, neuralpi_1kHz_40db_s] = mlamsk_FFT(neuralpi_1kHz_40db, fs);

figure
tiled = tiledlayout(3,2,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');

nexttile
semilogx(neuralpi_1kHz_6db_f, 20*log10(neuralpi_1kHz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: NeuralPi 1kHz -6db \nTHD = %e dB", neuralpi_1kHz_6db_THD);
title(title1)

nexttile
semilogx(hardware_1kHz_6db_f, 20*log10(hardware_1kHz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: Hardware 1kHz -6db \nTHD = %e dB", hardware_1kHz_6db_THD);
title(title1)

nexttile
semilogx(neuralpi_1kHz_20db_f, 20*log10(neuralpi_1kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: NeuralPi 1kHz -20db \nTHD = %e dB", neuralpi_1kHz_20db_THD);
title(title1)

nexttile
semilogx(hardware_1kHz_20db_f, 20*log10(hardware_1kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: Hardware 1kHz -20db \nTHD = %e dB", hardware_1kHz_20db_THD);
title(title1)

nexttile
semilogx(neuralpi_1kHz_40db_f, 20*log10(neuralpi_1kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: NeuralPi 1kHz -40db \nTHD = %e dB", neuralpi_1kHz_40db_THD);
title(title1)

nexttile
semilogx(hardware_1kHz_40db_f, 20*log10(hardware_1kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: Hardware 1kHz -40db \nTHD = %e dB", hardware_1kHz_40db_THD);
title(title1)

clear all
% 050 1kHz
hardware_THD_directory = './Cont_Audio_Files/Hardware_No_60/050_h';
neuralpi_THD_directory = './Cont_Audio_Files/NeuralPi/050_np';

[hardware_1kHz_6db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_050_1kHz_6dB.wav'));
[hardware_1kHz_20db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_050_1kHz_20dB.wav'));
[hardware_1kHz_40db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_050_1kHz_40dB.wav'));
[neuralpi_1kHz_6db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_050_1kHz_6dB.wav'));
[neuralpi_1kHz_20db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_050_1kHz_20dB.wav'));
[neuralpi_1kHz_40db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_050_1kHz_40dB.wav'));

hardware_1kHz_6db_THD = mlamsk_THD(hardware_1kHz_6db,fs)
hardware_1kHz_20db_THD = mlamsk_THD(hardware_1kHz_20db,fs)
hardware_1kHz_40db_THD = mlamsk_THD(hardware_1kHz_40db,fs)
neuralpi_1kHz_6db_THD = mlamsk_THD(neuralpi_1kHz_6db,fs)
neuralpi_1kHz_20db_THD = mlamsk_THD(neuralpi_1kHz_20db,fs)
neuralpi_1kHz_40db_THD = mlamsk_THD(neuralpi_1kHz_40db,fs)

[hardware_1kHz_6db_f, hardware_1kHz_6db_s] = mlamsk_FFT(hardware_1kHz_6db, fs);
[hardware_1kHz_20db_f, hardware_1kHz_20db_s] = mlamsk_FFT(hardware_1kHz_20db, fs);
[hardware_1kHz_40db_f, hardware_1kHz_40db_s] = mlamsk_FFT(hardware_1kHz_40db, fs);
[neuralpi_1kHz_6db_f, neuralpi_1kHz_6db_s] = mlamsk_FFT(neuralpi_1kHz_6db, fs);
[neuralpi_1kHz_20db_f, neuralpi_1kHz_20db_s] = mlamsk_FFT(neuralpi_1kHz_20db, fs);
[neuralpi_1kHz_40db_f, neuralpi_1kHz_40db_s] = mlamsk_FFT(neuralpi_1kHz_40db, fs);

figure
tiled = tiledlayout(3,2,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');

nexttile
semilogx(neuralpi_1kHz_6db_f, 20*log10(neuralpi_1kHz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: NeuralPi 1kHz -6db \nTHD = %e dB", neuralpi_1kHz_6db_THD);
title(title1)

nexttile
semilogx(hardware_1kHz_6db_f, 20*log10(hardware_1kHz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: Hardware 1kHz -6db \nTHD = %e dB", hardware_1kHz_6db_THD);
title(title1)

nexttile
semilogx(neuralpi_1kHz_20db_f, 20*log10(neuralpi_1kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: NeuralPi 1kHz -20db \nTHD = %e dB", neuralpi_1kHz_20db_THD);
title(title1)

nexttile
semilogx(hardware_1kHz_20db_f, 20*log10(hardware_1kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: Hardware 1kHz -20db \nTHD = %e dB", hardware_1kHz_20db_THD);
title(title1)

nexttile
semilogx(neuralpi_1kHz_40db_f, 20*log10(neuralpi_1kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: NeuralPi 1kHz -40db \nTHD = %e dB", neuralpi_1kHz_40db_THD);
title(title1)

nexttile
semilogx(hardware_1kHz_40db_f, 20*log10(hardware_1kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: Hardware 1kHz -40db \nTHD = %e dB", hardware_1kHz_40db_THD);
title(title1)

clear all
% 060 1kHz
hardware_THD_directory = './Cont_Audio_Files/Hardware_No_60/060_h';
neuralpi_THD_directory = './Cont_Audio_Files/NeuralPi/060_np';

[hardware_1kHz_6db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_060_1kHz_6dB.wav'));
[hardware_1kHz_20db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_060_1kHz_20dB.wav'));
[hardware_1kHz_40db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_060_1kHz_40dB.wav'));
[neuralpi_1kHz_6db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_060_1kHz_6dB.wav'));
[neuralpi_1kHz_20db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_060_1kHz_20dB.wav'));
[neuralpi_1kHz_40db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_060_1kHz_40dB.wav'));

hardware_1kHz_6db_THD = mlamsk_THD(hardware_1kHz_6db,fs)
hardware_1kHz_20db_THD = mlamsk_THD(hardware_1kHz_20db,fs)
hardware_1kHz_40db_THD = mlamsk_THD(hardware_1kHz_40db,fs)
neuralpi_1kHz_6db_THD = mlamsk_THD(neuralpi_1kHz_6db,fs)
neuralpi_1kHz_20db_THD = mlamsk_THD(neuralpi_1kHz_20db,fs)
neuralpi_1kHz_40db_THD = mlamsk_THD(neuralpi_1kHz_40db,fs)

[hardware_1kHz_6db_f, hardware_1kHz_6db_s] = mlamsk_FFT(hardware_1kHz_6db, fs);
[hardware_1kHz_20db_f, hardware_1kHz_20db_s] = mlamsk_FFT(hardware_1kHz_20db, fs);
[hardware_1kHz_40db_f, hardware_1kHz_40db_s] = mlamsk_FFT(hardware_1kHz_40db, fs);
[neuralpi_1kHz_6db_f, neuralpi_1kHz_6db_s] = mlamsk_FFT(neuralpi_1kHz_6db, fs);
[neuralpi_1kHz_20db_f, neuralpi_1kHz_20db_s] = mlamsk_FFT(neuralpi_1kHz_20db, fs);
[neuralpi_1kHz_40db_f, neuralpi_1kHz_40db_s] = mlamsk_FFT(neuralpi_1kHz_40db, fs);

figure
tiled = tiledlayout(3,2,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');

nexttile
semilogx(neuralpi_1kHz_6db_f, 20*log10(neuralpi_1kHz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: NeuralPi 1kHz -6db \nTHD = %e dB", neuralpi_1kHz_6db_THD);
title(title1)

nexttile
semilogx(hardware_1kHz_6db_f, 20*log10(hardware_1kHz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: Hardware 1kHz -6db \nTHD = %e dB", hardware_1kHz_6db_THD);
title(title1)

nexttile
semilogx(neuralpi_1kHz_20db_f, 20*log10(neuralpi_1kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: NeuralPi 1kHz -20db \nTHD = %e dB", neuralpi_1kHz_20db_THD);
title(title1)

nexttile
semilogx(hardware_1kHz_20db_f, 20*log10(hardware_1kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: Hardware 1kHz -20db \nTHD = %e dB", hardware_1kHz_20db_THD);
title(title1)

nexttile
semilogx(neuralpi_1kHz_40db_f, 20*log10(neuralpi_1kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: NeuralPi 1kHz -40db \nTHD = %e dB", neuralpi_1kHz_40db_THD);
title(title1)

nexttile
semilogx(hardware_1kHz_40db_f, 20*log10(hardware_1kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: Hardware 1kHz -40db \nTHD = %e dB", hardware_1kHz_40db_THD);
title(title1)

clear all
% 100 1kHz
hardware_THD_directory = './Cont_Audio_Files/Hardware_No_60/100_h';
neuralpi_THD_directory = './Cont_Audio_Files/NeuralPi/100_np';

[hardware_1kHz_6db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_100_1kHz_6dB.wav'));
[hardware_1kHz_20db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_100_1kHz_20dB.wav'));
[hardware_1kHz_40db, fs] = audioread(fullfile(hardware_THD_directory, './20211111_Hardware_LPB1_100_1kHz_40dB.wav'));
[neuralpi_1kHz_6db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_100_1kHz_6dB.wav'));
[neuralpi_1kHz_20db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_100_1kHz_20dB.wav'));
[neuralpi_1kHz_40db, fs] = audioread(fullfile(neuralpi_THD_directory, './20211109_NeuralPi_LPB1_100_1kHz_40dB.wav'));

hardware_1kHz_6db_THD = mlamsk_THD(hardware_1kHz_6db,fs)
hardware_1kHz_20db_THD = mlamsk_THD(hardware_1kHz_20db,fs)
hardware_1kHz_40db_THD = mlamsk_THD(hardware_1kHz_40db,fs)
neuralpi_1kHz_6db_THD = mlamsk_THD(neuralpi_1kHz_6db,fs)
neuralpi_1kHz_20db_THD = mlamsk_THD(neuralpi_1kHz_20db,fs)
neuralpi_1kHz_40db_THD = mlamsk_THD(neuralpi_1kHz_40db,fs)

[hardware_1kHz_6db_f, hardware_1kHz_6db_s] = mlamsk_FFT(hardware_1kHz_6db, fs);
[hardware_1kHz_20db_f, hardware_1kHz_20db_s] = mlamsk_FFT(hardware_1kHz_20db, fs);
[hardware_1kHz_40db_f, hardware_1kHz_40db_s] = mlamsk_FFT(hardware_1kHz_40db, fs);
[neuralpi_1kHz_6db_f, neuralpi_1kHz_6db_s] = mlamsk_FFT(neuralpi_1kHz_6db, fs);
[neuralpi_1kHz_20db_f, neuralpi_1kHz_20db_s] = mlamsk_FFT(neuralpi_1kHz_20db, fs);
[neuralpi_1kHz_40db_f, neuralpi_1kHz_40db_s] = mlamsk_FFT(neuralpi_1kHz_40db, fs);

figure
tiled = tiledlayout(3,2,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');

nexttile
semilogx(neuralpi_1kHz_6db_f, 20*log10(neuralpi_1kHz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: NeuralPi 1kHz -6db \nTHD = %e dB", neuralpi_1kHz_6db_THD);
title(title1)

nexttile
semilogx(hardware_1kHz_6db_f, 20*log10(hardware_1kHz_6db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: Hardware 1kHz -6db \nTHD = %e dB", hardware_1kHz_6db_THD);
title(title1)

nexttile
semilogx(neuralpi_1kHz_20db_f, 20*log10(neuralpi_1kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: NeuralPi 1kHz -20db \nTHD = %e dB", neuralpi_1kHz_20db_THD);
title(title1)

nexttile
semilogx(hardware_1kHz_20db_f, 20*log10(hardware_1kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: Hardware 1kHz -20db \nTHD = %e dB", hardware_1kHz_20db_THD);
title(title1)

nexttile
semilogx(neuralpi_1kHz_40db_f, 20*log10(neuralpi_1kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: NeuralPi 1kHz -40db \nTHD = %e dB", neuralpi_1kHz_40db_THD);
title(title1)

nexttile
semilogx(hardware_1kHz_40db_f, 20*log10(hardware_1kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: Hardware 1kHz -40db \nTHD = %e dB", hardware_1kHz_40db_THD);
title(title1)

clear all

% For Non-Continuous

% hardware_THD_directory = './Measurement_Audio_Files/LPB1_Hardware_Output_Signals/THD';
% neuralpi_THD_directory = './Measurement_Audio_Files/NeuralPi_Dummy_Data/THD';
% spice_THD_directory = './Measurement_Audio_Files/LPB1_Spice_Output_Signals/THD';

% [hardware_1kHz_6db, fs] = audioread(fullfile(hardware_THD_directory, './1kHz_6dB_LPB1_Hardware.wav'));
% [hardware_1kHz_20db, fs] = audioread(fullfile(hardware_THD_directory, './1kHz_20dB_LPB1_Hardware.wav'));
% [hardware_1kHz_40db, fs] = audioread(fullfile(hardware_THD_directory, './1kHz_40dB_LPB1_Hardware.wav'));
% [neuralpi_1kHz_6db, fs] = audioread(fullfile(neuralpi_THD_directory, './1kHz_6dB_NeuralPi_Test.wav'));
% [neuralpi_1kHz_20db, fs] = audioread(fullfile(neuralpi_THD_directory, './1kHz_20dB_NeuralPi_Test.wav'));
% [neuralpi_1kHz_40db, fs] = audioread(fullfile(neuralpi_THD_directory, './1kHz_40dB_NeuralPi_Test.wav'));
% [spice_1kHz_6db, fs] = audioread(fullfile(spice_THD_directory, './1khz_6db_dirty.wav'));
% [spice_1kHz_20db, fs] = audioread(fullfile(spice_THD_directory, './1khz_20db_dirty.wav'));
% [spice_1kHz_40db, fs] = audioread(fullfile(spice_THD_directory, './1khz_40db_dirty.wav'));
% 
% hardware_1kHz_6db_THD = mlamsk_THD(hardware_1kHz_6db,fs)
% hardware_1kHz_20db_THD = mlamsk_THD(hardware_1kHz_20db,fs)
% hardware_1kHz_40db_THD = mlamsk_THD(hardware_1kHz_40db,fs)
% neuralpi_1kHz_6db_THD = mlamsk_THD(neuralpi_1kHz_6db,fs)
% neuralpi_1kHz_20db_THD = mlamsk_THD(neuralpi_1kHz_20db,fs)
% neuralpi_1kHz_40db_THD = mlamsk_THD(neuralpi_1kHz_40db,fs)
% spice_1kHz_6db_THD = mlamsk_THD(spice_1kHz_6db,fs)
% spice_1kHz_20db_THD = mlamsk_THD(spice_1kHz_20db,fs)
% spice_1kHz_40db_THD = mlamsk_THD(spice_1kHz_40db,fs)
% 
% [hardware_1kHz_6db_f, hardware_1kHz_6db_s] = mlamsk_FFT(hardware_1kHz_6db, fs);
% [hardware_1kHz_20db_f, hardware_1kHz_20db_s] = mlamsk_FFT(hardware_1kHz_20db, fs);
% [hardware_1kHz_40db_f, hardware_1kHz_40db_s] = mlamsk_FFT(hardware_1kHz_40db, fs);
% [neuralpi_1kHz_6db_f, neuralpi_1kHz_6db_s] = mlamsk_FFT(neuralpi_1kHz_6db, fs);
% [neuralpi_1kHz_20db_f, neuralpi_1kHz_20db_s] = mlamsk_FFT(neuralpi_1kHz_20db, fs);
% [neuralpi_1kHz_40db_f, neuralpi_1kHz_40db_s] = mlamsk_FFT(neuralpi_1kHz_40db, fs);
% [spice_1kHz_6db_f, spice_1kHz_6db_s] = mlamsk_FFT(spice_1kHz_6db, fs);
% [spice_1kHz_20db_f, spice_1kHz_20db_s] = mlamsk_FFT(spice_1kHz_20db, fs);
% [spice_1kHz_40db_f, spice_1kHz_40db_s] = mlamsk_FFT(spice_1kHz_40db, fs);


% figure
% tiled = tiledlayout(3,3,'TileSpacing', 'Compact', 'Padding', 'Compact');
% set(gcf,'color','w');
% 
% nexttile
% semilogx(neuralpi_1kHz_6db_f, 20*log10(neuralpi_1kHz_6db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("NeuralPi 1kHz -6db \nTHD = %e dB", neuralpi_1kHz_6db_THD);
% title(title1)
% 
% nexttile
% semilogx(hardware_1kHz_6db_f, 20*log10(hardware_1kHz_6db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Hardware 1kHz -6db \nTHD = %e dB", hardware_1kHz_6db_THD);
% title(title1)
% 
% nexttile
% semilogx(spice_1kHz_6db_f, 20*log10(spice_1kHz_6db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Spice 1kHz -6db \nTHD = %e dB", spice_1kHz_6db_THD);
% title(title1)
% 
% nexttile
% semilogx(neuralpi_1kHz_20db_f, 20*log10(neuralpi_1kHz_20db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("NeuralPi 1kHz -20db \nTHD = %e dB", neuralpi_1kHz_20db_THD);
% title(title1)
% 
% nexttile
% semilogx(hardware_1kHz_20db_f, 20*log10(hardware_1kHz_20db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Hardware 1kHz -20db \nTHD = %e dB", hardware_1kHz_20db_THD);
% title(title1)
% 
% 
% nexttile
% semilogx(spice_1kHz_20db_f, 20*log10(spice_1kHz_20db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Spice 1kHz -20db \nTHD = %e dB", spice_1kHz_20db_THD);
% title(title1)
% 
% nexttile
% semilogx(neuralpi_1kHz_40db_f, 20*log10(neuralpi_1kHz_40db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("NeuralPi 1kHz -40db \nTHD = %e dB", neuralpi_1kHz_40db_THD);
% title(title1)
% 
% nexttile
% semilogx(hardware_1kHz_40db_f, 20*log10(hardware_1kHz_40db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Hardware 1kHz -40db \nTHD = %e dB", hardware_1kHz_40db_THD);
% title(title1)
% 
% 
% nexttile
% semilogx(spice_1kHz_40db_f, 20*log10(spice_1kHz_40db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Spice 1kHz -40db \nTHD = %e dB", spice_1kHz_40db_THD);
% title(title1)


