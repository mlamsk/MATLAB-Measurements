clear all
close all

% Continuous Parameter Model Testing
% 030
hardware_IM3_directory = './Cont_Audio_Files/Hardware_No_60/030_h';
neuralpi_IM3_directory = './Cont_Audio_Files/NeuralPi/030_np';

[hardware_800Hz_1_2kHz_20db, fs] = audioread(fullfile(hardware_IM3_directory, './20211111_Hardware_LPB1_030_800Hz_1-2kHz_20dB.wav'));
[hardware_800Hz_1_2kHz_40db, fs] = audioread(fullfile(hardware_IM3_directory, './20211111_Hardware_LPB1_030_800Hz_1-2kHz_40dB.wav'));
[neuralpi_800Hz_1_2kHz_20db, fs] = audioread(fullfile(neuralpi_IM3_directory, './20211109_NeuralPi_LPB1_030_800Hz_1-2kHz_20dB.wav'));
[neuralpi_800Hz_1_2kHz_40db, fs] = audioread(fullfile(neuralpi_IM3_directory, './20211109_NeuralPi_LPB1_030_800Hz_1-2kHz_40dB.wav'));

hardware_800Hz_1_2kHz_20db_IM3 = toi(hardware_800Hz_1_2kHz_20db,fs)
hardware_800Hz_1_2kHz_40db_IM3 = toi(hardware_800Hz_1_2kHz_40db,fs)
neuralpi_800Hz_1_2kHz_20db_IM3 = toi(neuralpi_800Hz_1_2kHz_20db,fs)
neuralpi_800Hz_1_2kHz_40db_IM3 = toi(neuralpi_800Hz_1_2kHz_40db,fs)

[hardware_800Hz_1_2kHz_20db_f, hardware_800Hz_1_2kHz_20db_s] = mlamsk_FFT(hardware_800Hz_1_2kHz_20db, fs);
[hardware_800Hz_1_2kHz_40db_f, hardware_800Hz_1_2kHz_40db_s] = mlamsk_FFT(hardware_800Hz_1_2kHz_40db, fs);
[neuralpi_800Hz_1_2kHz_20db_f, neuralpi_800Hz_1_2kHz_20db_s] = mlamsk_FFT(neuralpi_800Hz_1_2kHz_20db, fs);
[neuralpi_800Hz_1_2kHz_40db_f, neuralpi_800Hz_1_2kHz_40db_s] = mlamsk_FFT(neuralpi_800Hz_1_2kHz_40db, fs);


figure
tiled = tiledlayout(2,2,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');


nexttile
semilogx(neuralpi_800Hz_1_2kHz_20db_f, 20*log10(neuralpi_800Hz_1_2kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: NeuralPi 800Hz 1.2kHz -20db \nTOI = %e dB", neuralpi_800Hz_1_2kHz_20db_IM3);
title(title1)

nexttile
semilogx(hardware_800Hz_1_2kHz_20db_f, 20*log10(hardware_800Hz_1_2kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: Hardware 800Hz 1.2kHz -20db \nTOI = %e dB", hardware_800Hz_1_2kHz_20db_IM3);
title(title1)

nexttile
semilogx(neuralpi_800Hz_1_2kHz_40db_f, 20*log10(neuralpi_800Hz_1_2kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: NeuralPi 800Hz 1.2kHz -40db \nTOI = %e dB", neuralpi_800Hz_1_2kHz_40db_IM3);
title(title1)

nexttile
semilogx(hardware_800Hz_1_2kHz_40db_f, 20*log10(hardware_800Hz_1_2kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("030: Hardware 800Hz 1.2kHz -40db \nTOI = %e dB", hardware_800Hz_1_2kHz_40db_IM3);
title(title1)

% 050
hardware_IM3_directory = './Cont_Audio_Files/Hardware_No_60/050_h';
neuralpi_IM3_directory = './Cont_Audio_Files/NeuralPi/050_np';

[hardware_800Hz_1_2kHz_20db, fs] = audioread(fullfile(hardware_IM3_directory, './20211111_Hardware_LPB1_050_800Hz_1-2kHz_20dB.wav'));
[hardware_800Hz_1_2kHz_40db, fs] = audioread(fullfile(hardware_IM3_directory, './20211111_Hardware_LPB1_050_800Hz_1-2kHz_40dB.wav'));
[neuralpi_800Hz_1_2kHz_20db, fs] = audioread(fullfile(neuralpi_IM3_directory, './20211109_NeuralPi_LPB1_050_800Hz_1-2kHz_20dB.wav'));
[neuralpi_800Hz_1_2kHz_40db, fs] = audioread(fullfile(neuralpi_IM3_directory, './20211109_NeuralPi_LPB1_050_800Hz_1-2kHz_40dB.wav'));

hardware_800Hz_1_2kHz_20db_IM3 = toi(hardware_800Hz_1_2kHz_20db,fs)
hardware_800Hz_1_2kHz_40db_IM3 = toi(hardware_800Hz_1_2kHz_40db,fs)
neuralpi_800Hz_1_2kHz_20db_IM3 = toi(neuralpi_800Hz_1_2kHz_20db,fs)
neuralpi_800Hz_1_2kHz_40db_IM3 = toi(neuralpi_800Hz_1_2kHz_40db,fs)

[hardware_800Hz_1_2kHz_20db_f, hardware_800Hz_1_2kHz_20db_s] = mlamsk_FFT(hardware_800Hz_1_2kHz_20db, fs);
[hardware_800Hz_1_2kHz_40db_f, hardware_800Hz_1_2kHz_40db_s] = mlamsk_FFT(hardware_800Hz_1_2kHz_40db, fs);
[neuralpi_800Hz_1_2kHz_20db_f, neuralpi_800Hz_1_2kHz_20db_s] = mlamsk_FFT(neuralpi_800Hz_1_2kHz_20db, fs);
[neuralpi_800Hz_1_2kHz_40db_f, neuralpi_800Hz_1_2kHz_40db_s] = mlamsk_FFT(neuralpi_800Hz_1_2kHz_40db, fs);


figure
tiled = tiledlayout(2,2,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');


nexttile
semilogx(neuralpi_800Hz_1_2kHz_20db_f, 20*log10(neuralpi_800Hz_1_2kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: NeuralPi 800Hz 1.2kHz -20db \nTOI = %e dB", neuralpi_800Hz_1_2kHz_20db_IM3);
title(title1)

nexttile
semilogx(hardware_800Hz_1_2kHz_20db_f, 20*log10(hardware_800Hz_1_2kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: Hardware 800Hz 1.2kHz -20db \nTOI = %e dB", hardware_800Hz_1_2kHz_20db_IM3);
title(title1)

nexttile
semilogx(neuralpi_800Hz_1_2kHz_40db_f, 20*log10(neuralpi_800Hz_1_2kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: NeuralPi 800Hz 1.2kHz -40db \nTOI = %e dB", neuralpi_800Hz_1_2kHz_40db_IM3);
title(title1)

nexttile
semilogx(hardware_800Hz_1_2kHz_40db_f, 20*log10(hardware_800Hz_1_2kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("050: Hardware 800Hz 1.2kHz -40db \nTOI = %e dB", hardware_800Hz_1_2kHz_40db_IM3);
title(title1)

% 060
hardware_IM3_directory = './Cont_Audio_Files/Hardware_No_60/060_h';
neuralpi_IM3_directory = './Cont_Audio_Files/NeuralPi/060_np';

[hardware_800Hz_1_2kHz_20db, fs] = audioread(fullfile(hardware_IM3_directory, './20211111_Hardware_LPB1_060_800Hz_1-2kHz_20dB.wav'));
[hardware_800Hz_1_2kHz_40db, fs] = audioread(fullfile(hardware_IM3_directory, './20211111_Hardware_LPB1_060_800Hz_1-2kHz_40dB.wav'));
[neuralpi_800Hz_1_2kHz_20db, fs] = audioread(fullfile(neuralpi_IM3_directory, './20211109_NeuralPi_LPB1_060_800Hz_1-2kHz_20dB.wav'));
[neuralpi_800Hz_1_2kHz_40db, fs] = audioread(fullfile(neuralpi_IM3_directory, './20211109_NeuralPi_LPB1_060_800Hz_1-2kHz_40dB.wav'));

hardware_800Hz_1_2kHz_20db_IM3 = toi(hardware_800Hz_1_2kHz_20db,fs)
hardware_800Hz_1_2kHz_40db_IM3 = toi(hardware_800Hz_1_2kHz_40db,fs)
neuralpi_800Hz_1_2kHz_20db_IM3 = toi(neuralpi_800Hz_1_2kHz_20db,fs)
neuralpi_800Hz_1_2kHz_40db_IM3 = toi(neuralpi_800Hz_1_2kHz_40db,fs)

[hardware_800Hz_1_2kHz_20db_f, hardware_800Hz_1_2kHz_20db_s] = mlamsk_FFT(hardware_800Hz_1_2kHz_20db, fs);
[hardware_800Hz_1_2kHz_40db_f, hardware_800Hz_1_2kHz_40db_s] = mlamsk_FFT(hardware_800Hz_1_2kHz_40db, fs);
[neuralpi_800Hz_1_2kHz_20db_f, neuralpi_800Hz_1_2kHz_20db_s] = mlamsk_FFT(neuralpi_800Hz_1_2kHz_20db, fs);
[neuralpi_800Hz_1_2kHz_40db_f, neuralpi_800Hz_1_2kHz_40db_s] = mlamsk_FFT(neuralpi_800Hz_1_2kHz_40db, fs);


figure
tiled = tiledlayout(2,2,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');


nexttile
semilogx(neuralpi_800Hz_1_2kHz_20db_f, 20*log10(neuralpi_800Hz_1_2kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: NeuralPi 800Hz 1.2kHz -20db \nTOI = %e dB", neuralpi_800Hz_1_2kHz_20db_IM3);
title(title1)

nexttile
semilogx(hardware_800Hz_1_2kHz_20db_f, 20*log10(hardware_800Hz_1_2kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: Hardware 800Hz 1.2kHz -20db \nTOI = %e dB", hardware_800Hz_1_2kHz_20db_IM3);
title(title1)

nexttile
semilogx(neuralpi_800Hz_1_2kHz_40db_f, 20*log10(neuralpi_800Hz_1_2kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: NeuralPi 800Hz 1.2kHz -40db \nTOI = %e dB", neuralpi_800Hz_1_2kHz_40db_IM3);
title(title1)

nexttile
semilogx(hardware_800Hz_1_2kHz_40db_f, 20*log10(hardware_800Hz_1_2kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("060: Hardware 800Hz 1.2kHz -40db \nTOI = %e dB", hardware_800Hz_1_2kHz_40db_IM3);
title(title1)

% 100
hardware_IM3_directory = './Cont_Audio_Files/Hardware_No_60/100_h';
neuralpi_IM3_directory = './Cont_Audio_Files/NeuralPi/100_np';

[hardware_800Hz_1_2kHz_20db, fs] = audioread(fullfile(hardware_IM3_directory, './20211111_Hardware_LPB1_100_800Hz_1-2kHz_20dB.wav'));
[hardware_800Hz_1_2kHz_40db, fs] = audioread(fullfile(hardware_IM3_directory, './20211111_Hardware_LPB1_100_800Hz_1-2kHz_40dB.wav'));
[neuralpi_800Hz_1_2kHz_20db, fs] = audioread(fullfile(neuralpi_IM3_directory, './20211109_NeuralPi_LPB1_100_800Hz_1-2kHz_20dB.wav'));
[neuralpi_800Hz_1_2kHz_40db, fs] = audioread(fullfile(neuralpi_IM3_directory, './20211109_NeuralPi_LPB1_100_800Hz_1-2kHz_40dB.wav'));

hardware_800Hz_1_2kHz_20db_IM3 = toi(hardware_800Hz_1_2kHz_20db,fs)
hardware_800Hz_1_2kHz_40db_IM3 = toi(hardware_800Hz_1_2kHz_40db,fs)
neuralpi_800Hz_1_2kHz_20db_IM3 = toi(neuralpi_800Hz_1_2kHz_20db,fs)
neuralpi_800Hz_1_2kHz_40db_IM3 = toi(neuralpi_800Hz_1_2kHz_40db,fs)

[hardware_800Hz_1_2kHz_20db_f, hardware_800Hz_1_2kHz_20db_s] = mlamsk_FFT(hardware_800Hz_1_2kHz_20db, fs);
[hardware_800Hz_1_2kHz_40db_f, hardware_800Hz_1_2kHz_40db_s] = mlamsk_FFT(hardware_800Hz_1_2kHz_40db, fs);
[neuralpi_800Hz_1_2kHz_20db_f, neuralpi_800Hz_1_2kHz_20db_s] = mlamsk_FFT(neuralpi_800Hz_1_2kHz_20db, fs);
[neuralpi_800Hz_1_2kHz_40db_f, neuralpi_800Hz_1_2kHz_40db_s] = mlamsk_FFT(neuralpi_800Hz_1_2kHz_40db, fs);


figure
tiled = tiledlayout(2,2,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');


nexttile
semilogx(neuralpi_800Hz_1_2kHz_20db_f, 20*log10(neuralpi_800Hz_1_2kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: NeuralPi 800Hz 1.2kHz -20db \nTOI = %e dB", neuralpi_800Hz_1_2kHz_20db_IM3);
title(title1)

nexttile
semilogx(hardware_800Hz_1_2kHz_20db_f, 20*log10(hardware_800Hz_1_2kHz_20db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: Hardware 800Hz 1.2kHz -20db \nTOI = %e dB", hardware_800Hz_1_2kHz_20db_IM3);
title(title1)

nexttile
semilogx(neuralpi_800Hz_1_2kHz_40db_f, 20*log10(neuralpi_800Hz_1_2kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: NeuralPi 800Hz 1.2kHz -40db \nTOI = %e dB", neuralpi_800Hz_1_2kHz_40db_IM3);
title(title1)

nexttile
semilogx(hardware_800Hz_1_2kHz_40db_f, 20*log10(hardware_800Hz_1_2kHz_40db_s))
xlabel("f, [Hz]")
ylabel("Amplitude")
axis([50 20e3 -inf inf])
title1 = sprintf("100: Hardware 800Hz 1.2kHz -40db \nTOI = %e dB", hardware_800Hz_1_2kHz_40db_IM3);
title(title1)


% Non-Continuous Parameter
% hardware_IM3_directory = './Measurement_Audio_Files/LPB1_Hardware_Output_Signals/IM3';
% neuralpi_IM3_directory = './Measurement_Audio_Files/NeuralPi_Dummy_Data/IM3';
% spice_IM3_directory = './Measurement_Audio_Files/LPB1_Spice_Output_Signals/IM3';
% 
% [hardware_800Hz_1_2kHz_20db, fs] = audioread(fullfile(hardware_IM3_directory, './800Hz_1-2kHz_20dB_LPB1_Hardware.wav'));
% [hardware_800Hz_1_2kHz_40db, fs] = audioread(fullfile(hardware_IM3_directory, './800Hz_1-2kHz_40dB_LPB1_Hardware.wav'));
% [neuralpi_800Hz_1_2kHz_20db, fs] = audioread(fullfile(neuralpi_IM3_directory, './800Hz_1-2kHz_20dB_NeuralPi_Test.wav'));
% [neuralpi_800Hz_1_2kHz_40db, fs] = audioread(fullfile(neuralpi_IM3_directory, './800Hz_1-2kHz_40dB_NeuralPi_Test.wav'));
% [spice_800Hz_1_2kHz_20db, fs] = audioread(fullfile(spice_IM3_directory, './800hz_1-2khz_20db_dirty.wav'));
% [spice_800Hz_1_2kHz_40db, fs] = audioread(fullfile(spice_IM3_directory, './800hz_1-2khz_40db_dirty.wav'));
% 
% hardware_800Hz_1_2kHz_20db_IM3 = toi(hardware_800Hz_1_2kHz_20db,fs)
% hardware_800Hz_1_2kHz_40db_IM3 = toi(hardware_800Hz_1_2kHz_40db,fs)
% neuralpi_800Hz_1_2kHz_20db_IM3 = toi(neuralpi_800Hz_1_2kHz_20db,fs)
% neuralpi_800Hz_1_2kHz_40db_IM3 = toi(neuralpi_800Hz_1_2kHz_40db,fs)
% spice_800Hz_1_2kHz_20db_IM3 = toi(spice_800Hz_1_2kHz_20db,fs)
% spice_800Hz_1_2kHz_40db_IM3 = toi(spice_800Hz_1_2kHz_40db,fs)
% 
% [hardware_800Hz_1_2kHz_20db_f, hardware_800Hz_1_2kHz_20db_s] = mlamsk_FFT(hardware_800Hz_1_2kHz_20db, fs);
% [hardware_800Hz_1_2kHz_40db_f, hardware_800Hz_1_2kHz_40db_s] = mlamsk_FFT(hardware_800Hz_1_2kHz_40db, fs);
% [neuralpi_800Hz_1_2kHz_20db_f, neuralpi_800Hz_1_2kHz_20db_s] = mlamsk_FFT(neuralpi_800Hz_1_2kHz_20db, fs);
% [neuralpi_800Hz_1_2kHz_40db_f, neuralpi_800Hz_1_2kHz_40db_s] = mlamsk_FFT(neuralpi_800Hz_1_2kHz_40db, fs);
% [spice_800Hz_1_2kHz_20db_f, spice_800Hz_1_2kHz_20db_s] = mlamsk_FFT(spice_800Hz_1_2kHz_20db, fs);
% [spice_800Hz_1_2kHz_40db_f, spice_800Hz_1_2kHz_40db_s] = mlamsk_FFT(spice_800Hz_1_2kHz_40db, fs);
% 
% 
% figure
% tiled = tiledlayout(2,3,'TileSpacing', 'Compact', 'Padding', 'Compact');
% set(gcf,'color','w');
% 
% 
% nexttile
% semilogx(neuralpi_800Hz_1_2kHz_20db_f, 20*log10(neuralpi_800Hz_1_2kHz_20db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("NeuralPi 800Hz 1.2kHz -20db \nTOI = %e dB", neuralpi_800Hz_1_2kHz_20db_IM3);
% title(title1)
% 
% nexttile
% semilogx(hardware_800Hz_1_2kHz_20db_f, 20*log10(hardware_800Hz_1_2kHz_20db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Hardware 800Hz 1.2kHz -20db \nTOI = %e dB", hardware_800Hz_1_2kHz_20db_IM3);
% title(title1)
% 
% nexttile
% semilogx(spice_800Hz_1_2kHz_20db_f, 20*log10(spice_800Hz_1_2kHz_20db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Spice 800Hz 1.2kHz -20db \nTOI = %e dB", spice_800Hz_1_2kHz_20db_IM3);
% title(title1)
% 
% nexttile
% semilogx(neuralpi_800Hz_1_2kHz_40db_f, 20*log10(neuralpi_800Hz_1_2kHz_40db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("NeuralPi 800Hz 1.2kHz -40db \nTOI = %e dB", neuralpi_800Hz_1_2kHz_40db_IM3);
% title(title1)
% 
% nexttile
% semilogx(hardware_800Hz_1_2kHz_40db_f, 20*log10(hardware_800Hz_1_2kHz_40db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Hardware 800Hz 1.2kHz -40db \nTOI = %e dB", hardware_800Hz_1_2kHz_40db_IM3);
% title(title1)
% 
% 
% nexttile
% semilogx(spice_800Hz_1_2kHz_40db_f, 20*log10(spice_800Hz_1_2kHz_40db_s))
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% axis([50 20e3 -inf inf])
% title1 = sprintf("Spice 800Hz 1.2kHz -40db \nTOI = %e dB", spice_800Hz_1_2kHz_40db_IM3);
% title(title1)


