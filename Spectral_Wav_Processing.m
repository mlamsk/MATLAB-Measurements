clear all
close all

% Continuous Parameter Model Testing
% 030
hardware_Pink_directory = './Cont_Audio_Files/Hardware_No_60/030_h';
neuralpi_Pink_directory = './Cont_Audio_Files/NeuralPi/030_np';
clean_Pink_directory = './Cont_Audio_Files/Clean';


[clean6db, clean_fs] = audioread(fullfile(clean_Pink_directory, "./Pink_6dB_Clean.wav"));
[hardware6db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"./20211111_Hardware_LPB1_030_Pink_6dB.wav"));
[neuralpi6db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"./20211109_NeuralPi_LPB1_030_Pink_6dB.wav"));

[clean20db, clean_fs] = audioread(fullfile(clean_Pink_directory, "./Pink_20dB_Clean.wav"));
[hardware20db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"./20211111_Hardware_LPB1_030_Pink_20dB.wav"));
[neuralpi20db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"./20211109_NeuralPi_LPB1_030_Pink_20dB.wav"));

[clean40db, clean_fs] = audioread(fullfile(clean_Pink_directory, "./Pink_40dB_Clean.wav"));
[hardware40db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"20211111_Hardware_LPB1_030_Pink_40dB.wav"));
[neuralpi40db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"20211109_NeuralPi_LPB1_030_Pink_40dB.wav"));


[clean_f, clean_6db_s] = mlamsk_FFT(clean6db, clean_fs);
[hardware_f, hardware_6db_s] = mlamsk_FFT(hardware6db, hardware_fs);
[neuralpi_f, neuralpi_6db_s] = mlamsk_FFT(neuralpi6db, neuralpi_fs);

[clean_f, clean_20db_s] = mlamsk_FFT(clean20db, clean_fs);
[hardware_f, hardware_20db_s] = mlamsk_FFT(hardware20db, hardware_fs);
[neuralpi_f, neuralpi_20db_s] = mlamsk_FFT(neuralpi20db, neuralpi_fs);

[clean_f, clean_40db_s] = mlamsk_FFT(clean40db, clean_fs);
[hardware_f, hardware_40db_s] = mlamsk_FFT(hardware40db, hardware_fs);
[neuralpi_f, neuralpi_40db_s] = mlamsk_FFT(neuralpi40db, neuralpi_fs);

clean_smooth_6db = smoothdata(clean_6db_s, 'gaussian', 800);
hardware_smooth_6db = smoothdata(hardware_6db_s, 'gaussian', 800);
neuralpi_smooth_6db = smoothdata(neuralpi_6db_s, 'gaussian', 800);

clean_smooth_20db = smoothdata(clean_20db_s, 'gaussian', 800);
hardware_smooth_20db = smoothdata(hardware_20db_s, 'gaussian', 800);
neuralpi_smooth_20db = smoothdata(neuralpi_20db_s, 'gaussian', 800);

clean_smooth_40db = smoothdata(clean_40db_s, 'gaussian', 800);
hardware_smooth_40db = smoothdata(hardware_40db_s, 'gaussian', 800);
neuralpi_smooth_40db = smoothdata(neuralpi_40db_s, 'gaussian', 800);

figure
tiledlayout(1,3,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');

nexttile
semilogx(clean_f, 10*log10(((neuralpi_smooth_6db-hardware_smooth_6db)).^2))
hold on
axis([50 20e3 -120 -60])
xlabel("f, [Hz]")
ylabel("Amplitude")
legend("030, -6dB")
title("Difference in Output of Pink Noise for NeuralPi")

nexttile
semilogx(clean_f, 10*log10(((neuralpi_smooth_20db-hardware_smooth_20db)).^2))
hold on
axis([50 20e3 -120 -60])
xlabel("f, [Hz]")
ylabel("Amplitude")
legend("030, -20dB")
title("Difference in Output of Pink Noise for NeuralPi")

nexttile
semilogx(clean_f, 10*log10(((neuralpi_smooth_40db-hardware_smooth_40db)).^2))
hold on
axis([50 20e3 -120 -60])
xlabel("f, [Hz]")
ylabel("Amplitude")
legend("030, -40dB")
title("Difference in Output of Pink Noise for NeuralPi")

 %050
 hardware_Pink_directory = './Cont_Audio_Files/Hardware_No_60/050_h';
neuralpi_Pink_directory = './Cont_Audio_Files/NeuralPi/050_np';
clean_Pink_directory = './Cont_Audio_Files/Clean';


[clean6db, clean_fs] = audioread(fullfile(clean_Pink_directory, "Pink_6dB_Clean.wav"));
[hardware6db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"20211111_Hardware_LPB1_050_Pink_6dB.wav"));
[neuralpi6db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"20211109_NeuralPi_LPB1_050_Pink_6dB.wav"));

[clean20db, clean_fs] = audioread(fullfile(clean_Pink_directory, "Pink_20dB_Clean.wav"));
[hardware20db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"20211111_Hardware_LPB1_050_Pink_20dB.wav"));
[neuralpi20db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"20211109_NeuralPi_LPB1_050_Pink_20dB.wav"));

[clean40db, clean_fs] = audioread(fullfile(clean_Pink_directory, "Pink_40dB_Clean.wav"));
[hardware40db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"20211111_Hardware_LPB1_050_Pink_40dB.wav"));
[neuralpi40db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"20211109_NeuralPi_LPB1_050_Pink_40dB.wav"));


[clean_f, clean_6db_s] = mlamsk_FFT(clean6db, clean_fs);
[hardware_f, hardware_6db_s] = mlamsk_FFT(hardware6db, hardware_fs);
[neuralpi_f, neuralpi_6db_s] = mlamsk_FFT(neuralpi6db, neuralpi_fs);

[clean_f, clean_20db_s] = mlamsk_FFT(clean20db, clean_fs);
[hardware_f, hardware_20db_s] = mlamsk_FFT(hardware20db, hardware_fs);
[neuralpi_f, neuralpi_20db_s] = mlamsk_FFT(neuralpi20db, neuralpi_fs);

[clean_f, clean_40db_s] = mlamsk_FFT(clean40db, clean_fs);
[hardware_f, hardware_40db_s] = mlamsk_FFT(hardware40db, hardware_fs);
[neuralpi_f, neuralpi_40db_s] = mlamsk_FFT(neuralpi40db, neuralpi_fs);

clean_smooth_6db = smoothdata(clean_6db_s, 'gaussian', 800);
hardware_smooth_6db = smoothdata(hardware_6db_s, 'gaussian', 800);
neuralpi_smooth_6db = smoothdata(neuralpi_6db_s, 'gaussian', 800);

clean_smooth_20db = smoothdata(clean_20db_s, 'gaussian', 800);
hardware_smooth_20db = smoothdata(hardware_20db_s, 'gaussian', 800);
neuralpi_smooth_20db = smoothdata(neuralpi_20db_s, 'gaussian', 800);

clean_smooth_40db = smoothdata(clean_40db_s, 'gaussian', 800);
hardware_smooth_40db = smoothdata(hardware_40db_s, 'gaussian', 800);
neuralpi_smooth_40db = smoothdata(neuralpi_40db_s, 'gaussian', 800);

figure
tiledlayout(1,3,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');

nexttile
semilogx(clean_f, 10*log10(((neuralpi_smooth_6db-hardware_smooth_6db)).^2))
hold on
axis([50 20e3 -120 -60])
xlabel("f, [Hz]")
ylabel("Amplitude")
legend("050, -6dB")
title("Difference in Output of Pink Noise for NeuralPi")

nexttile
semilogx(clean_f, 10*log10(((neuralpi_smooth_20db-hardware_smooth_20db)).^2))
hold on
axis([50 20e3 -120 -60])
xlabel("f, [Hz]")
ylabel("Amplitude")
legend("050, -20dB")
title("Difference in Output of Pink Noise for NeuralPi")

nexttile
semilogx(clean_f, 10*log10(((neuralpi_smooth_40db-hardware_smooth_40db)).^2))
hold on
axis([50 20e3 -120 -60])
xlabel("f, [Hz]")
ylabel("Amplitude")
legend("050, -40dB")
title("Difference in Output of Pink Noise for NeuralPi")

% 060
hardware_Pink_directory = './Cont_Audio_Files/Hardware_No_60/060_h';
neuralpi_Pink_directory = './Cont_Audio_Files/NeuralPi/060_np';
clean_Pink_directory = './Cont_Audio_Files/Clean';


[clean6db, clean_fs] = audioread(fullfile(clean_Pink_directory, "Pink_6dB_Clean.wav"));
[hardware6db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"20211111_Hardware_LPB1_060_Pink_6dB.wav"));
[neuralpi6db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"20211109_NeuralPi_LPB1_060_Pink_6dB.wav"));

[clean20db, clean_fs] = audioread(fullfile(clean_Pink_directory, "Pink_20dB_Clean.wav"));
[hardware20db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"20211111_Hardware_LPB1_060_Pink_20dB.wav"));
[neuralpi20db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"20211109_NeuralPi_LPB1_060_Pink_20dB.wav"));

[clean40db, clean_fs] = audioread(fullfile(clean_Pink_directory, "Pink_40dB_Clean.wav"));
[hardware40db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"20211111_Hardware_LPB1_060_Pink_40dB.wav"));
[neuralpi40db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"20211109_NeuralPi_LPB1_060_Pink_40dB.wav"));


[clean_f, clean_6db_s] = mlamsk_FFT(clean6db, clean_fs);
[hardware_f, hardware_6db_s] = mlamsk_FFT(hardware6db, hardware_fs);
[neuralpi_f, neuralpi_6db_s] = mlamsk_FFT(neuralpi6db, neuralpi_fs);

[clean_f, clean_20db_s] = mlamsk_FFT(clean20db, clean_fs);
[hardware_f, hardware_20db_s] = mlamsk_FFT(hardware20db, hardware_fs);
[neuralpi_f, neuralpi_20db_s] = mlamsk_FFT(neuralpi20db, neuralpi_fs);

[clean_f, clean_40db_s] = mlamsk_FFT(clean40db, clean_fs);
[hardware_f, hardware_40db_s] = mlamsk_FFT(hardware40db, hardware_fs);
[neuralpi_f, neuralpi_40db_s] = mlamsk_FFT(neuralpi40db, neuralpi_fs);

clean_smooth_6db = smoothdata(clean_6db_s, 'gaussian', 800);
hardware_smooth_6db = smoothdata(hardware_6db_s, 'gaussian', 800);
neuralpi_smooth_6db = smoothdata(neuralpi_6db_s, 'gaussian', 800);

clean_smooth_20db = smoothdata(clean_20db_s, 'gaussian', 800);
hardware_smooth_20db = smoothdata(hardware_20db_s, 'gaussian', 800);
neuralpi_smooth_20db = smoothdata(neuralpi_20db_s, 'gaussian', 800);

clean_smooth_40db = smoothdata(clean_40db_s, 'gaussian', 800);
hardware_smooth_40db = smoothdata(hardware_40db_s, 'gaussian', 800);
neuralpi_smooth_40db = smoothdata(neuralpi_40db_s, 'gaussian', 800);

figure
tiledlayout(1,3,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');

nexttile
semilogx(clean_f, 10*log10(((neuralpi_smooth_6db-hardware_smooth_6db)).^2))
hold on
axis([50 20e3 -120 -60])
xlabel("f, [Hz]")
ylabel("Amplitude")
legend("060, -6dB")
title("Difference in Output of Pink Noise for NeuralPi")

nexttile
semilogx(clean_f, 10*log10(((neuralpi_smooth_20db-hardware_smooth_20db)).^2))
hold on
axis([50 20e3 -120 -60])
xlabel("f, [Hz]")
ylabel("Amplitude")
legend("060, -20dB")
title("Difference in Output of Pink Noise for NeuralPi")

nexttile
semilogx(clean_f, 10*log10(((neuralpi_smooth_40db-hardware_smooth_40db)).^2))
hold on
axis([50 20e3 -120 -60])
xlabel("f, [Hz]")
ylabel("Amplitude")
legend("060, -40dB")
title("Difference in Output of Pink Noise for NeuralPi")

% 100
hardware_Pink_directory = './Cont_Audio_Files/Hardware_No_60/100_h';
neuralpi_Pink_directory = './Cont_Audio_Files/NeuralPi/100_np';
clean_Pink_directory = './Cont_Audio_Files/Clean';


[clean6db, clean_fs] = audioread(fullfile(clean_Pink_directory, "Pink_6dB_Clean.wav"));
[hardware6db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"20211111_Hardware_LPB1_100_Pink_6dB.wav"));
[neuralpi6db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"20211109_NeuralPi_LPB1_100_Pink_6dB.wav"));

[clean20db, clean_fs] = audioread(fullfile(clean_Pink_directory, "Pink_20dB_Clean.wav"));
[hardware20db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"20211111_Hardware_LPB1_100_Pink_20dB.wav"));
[neuralpi20db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"20211109_NeuralPi_LPB1_100_Pink_20dB.wav"));

[clean40db, clean_fs] = audioread(fullfile(clean_Pink_directory, "Pink_40dB_Clean.wav"));
[hardware40db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"20211111_Hardware_LPB1_100_Pink_40dB.wav"));
[neuralpi40db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"20211109_NeuralPi_LPB1_100_Pink_40dB.wav"));


[clean_f, clean_6db_s] = mlamsk_FFT(clean6db, clean_fs);
[hardware_f, hardware_6db_s] = mlamsk_FFT(hardware6db, hardware_fs);
[neuralpi_f, neuralpi_6db_s] = mlamsk_FFT(neuralpi6db, neuralpi_fs);

[clean_f, clean_20db_s] = mlamsk_FFT(clean20db, clean_fs);
[hardware_f, hardware_20db_s] = mlamsk_FFT(hardware20db, hardware_fs);
[neuralpi_f, neuralpi_20db_s] = mlamsk_FFT(neuralpi20db, neuralpi_fs);

[clean_f, clean_40db_s] = mlamsk_FFT(clean40db, clean_fs);
[hardware_f, hardware_40db_s] = mlamsk_FFT(hardware40db, hardware_fs);
[neuralpi_f, neuralpi_40db_s] = mlamsk_FFT(neuralpi40db, neuralpi_fs);

clean_smooth_6db = smoothdata(clean_6db_s, 'gaussian', 800);
hardware_smooth_6db = smoothdata(hardware_6db_s, 'gaussian', 800);
neuralpi_smooth_6db = smoothdata(neuralpi_6db_s, 'gaussian', 800);

clean_smooth_20db = smoothdata(clean_20db_s, 'gaussian', 800);
hardware_smooth_20db = smoothdata(hardware_20db_s, 'gaussian', 800);
neuralpi_smooth_20db = smoothdata(neuralpi_20db_s, 'gaussian', 800);

clean_smooth_40db = smoothdata(clean_40db_s, 'gaussian', 800);
hardware_smooth_40db = smoothdata(hardware_40db_s, 'gaussian', 800);
neuralpi_smooth_40db = smoothdata(neuralpi_40db_s, 'gaussian', 800);

figure
tiledlayout(1,3,'TileSpacing', 'Compact', 'Padding', 'Compact');
set(gcf,'color','w');

nexttile
semilogx(clean_f, 10*log10(((neuralpi_smooth_6db-hardware_smooth_6db)).^2))
hold on
axis([50 20e3 -120 -60])
xlabel("f, [Hz]")
ylabel("Amplitude")
legend("100, -6dB")
title("Difference in Output of Pink Noise for NeuralPi")

nexttile
semilogx(clean_f, 10*log10(((neuralpi_smooth_20db-hardware_smooth_20db)).^2))
hold on
axis([50 20e3 -120 -60])
xlabel("f, [Hz]")
ylabel("Amplitude")
legend("100, -20dB")
title("Difference in Output of Pink Noise for NeuralPi")

nexttile
semilogx(clean_f, 10*log10(((neuralpi_smooth_40db-hardware_smooth_40db)).^2))
hold on
axis([50 20e3 -120 -60])
xlabel("f, [Hz]")
ylabel("Amplitude")
legend("100, -40dB")
title("Difference in Output of Pink Noise for NeuralPi")


% Non-Continuous Parameter
% hardware_Pink_directory = './Measurement_Audio_Files/LPB1_Hardware_Output_Signals/Pink';
% neuralpi_Pink_directory = './Measurement_Audio_Files/NeuralPi_Dummy_Data/Pink';
% spice_Pink_directory = './Measurement_Audio_Files/LPB1_Spice_Output_Signals/Pink';
% clean_Pink_directory = './Measurement_Audio_Files/Clean_Test_Signals/Pink';
% 
% 
% [clean6db, clean_fs] = audioread(fullfile(clean_Pink_directory, "Pink_6dB_Clean.wav"));
% [hardware6db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"Pink_6dB_LPB1_Hardware.wav"));
% [neuralpi6db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"Pink_6dB_NeuralPi_Test.wav"));
% [spice6db, spice_fs] = audioread(fullfile(spice_Pink_directory,"pink_6db_dirty.wav"));
% 
% [clean20db, clean_fs] = audioread(fullfile(clean_Pink_directory, "Pink_20dB_Clean.wav"));
% [hardware20db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"Pink_20dB_LPB1_Hardware.wav"));
% [neuralpi20db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"Pink_20dB_NeuralPi_Test.wav"));
% [spice20db, spice_fs] = audioread(fullfile(spice_Pink_directory,"pink_20db_dirty.wav"));
% 
% [clean40db, clean_fs] = audioread(fullfile(clean_Pink_directory, "Pink_40dB_Clean.wav"));
% [hardware40db, hardware_fs] = audioread(fullfile(hardware_Pink_directory,"Pink_40dB_LPB1_Hardware.wav"));
% [neuralpi40db, neuralpi_fs] = audioread(fullfile(neuralpi_Pink_directory,"Pink_40dB_NeuralPi_Test.wav"));
% [spice40db, spice_fs] = audioread(fullfile(spice_Pink_directory,"pink_40db_dirty.wav"));
% 
% 
% [clean_f, clean_6db_s] = mlamsk_FFT(clean6db, clean_fs);
% [hardware_f, hardware_6db_s] = mlamsk_FFT(hardware6db, hardware_fs);
% [neuralpi_f, neuralpi_6db_s] = mlamsk_FFT(neuralpi6db, neuralpi_fs);
% [spice_f, spice_6db_s] = mlamsk_FFT(spice6db, spice_fs);
% 
% [clean_f, clean_20db_s] = mlamsk_FFT(clean20db, clean_fs);
% [hardware_f, hardware_20db_s] = mlamsk_FFT(hardware20db, hardware_fs);
% [neuralpi_f, neuralpi_20db_s] = mlamsk_FFT(neuralpi20db, neuralpi_fs);
% [spice_f, spice_20db_s] = mlamsk_FFT(spice20db, spice_fs);
% 
% [clean_f, clean_40db_s] = mlamsk_FFT(clean40db, clean_fs);
% [hardware_f, hardware_40db_s] = mlamsk_FFT(hardware40db, hardware_fs);
% [neuralpi_f, neuralpi_40db_s] = mlamsk_FFT(neuralpi40db, neuralpi_fs);
% [spice_f, spice_40db_s] = mlamsk_FFT(spice40db, spice_fs);
% 
% clean_smooth_6db = smoothdata(clean_6db_s, 'gaussian', 800);
% hardware_smooth_6db = smoothdata(hardware_6db_s, 'gaussian', 800);
% neuralpi_smooth_6db = smoothdata(neuralpi_6db_s, 'gaussian', 800);
% spice_smooth_6db = smoothdata(spice_6db_s, 'gaussian', 800);
% 
% clean_smooth_20db = smoothdata(clean_20db_s, 'gaussian', 800);
% hardware_smooth_20db = smoothdata(hardware_20db_s, 'gaussian', 800);
% neuralpi_smooth_20db = smoothdata(neuralpi_20db_s, 'gaussian', 800);
% spice_smooth_20db = smoothdata(spice_20db_s, 'gaussian', 800);
% 
% clean_smooth_40db = smoothdata(clean_40db_s, 'gaussian', 800);
% hardware_smooth_40db = smoothdata(hardware_40db_s, 'gaussian', 800);
% neuralpi_smooth_40db = smoothdata(neuralpi_40db_s, 'gaussian', 800);
% spice_smooth_40db = smoothdata(spice_40db_s, 'gaussian', 800);
% 
% figure
% tiledlayout(1,3,'TileSpacing', 'Compact', 'Padding', 'Compact');
% set(gcf,'color','w');
% 
% nexttile
% semilogx(clean_f, 10*log10(((neuralpi_smooth_6db-hardware_smooth_6db)).^2))
% hold on
% semilogx(clean_f, 10*log10(((spice_smooth_6db-hardware_smooth_6db)).^2))
% axis([50 20e3 -120 -60])
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% legend("NeuralPi Difference -6dB", "Spice Difference -6dB")
% title("Difference in Output of Pink Noise for NeuralPi and Spice Models -6dB")
% 
% nexttile
% semilogx(clean_f, 10*log10(((neuralpi_smooth_20db-hardware_smooth_20db)).^2))
% hold on
% semilogx(clean_f, 10*log10(((spice_smooth_20db-hardware_smooth_20db)).^2))
% axis([50 20e3 -120 -60])
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% legend("NeuralPi Difference -20dB", "Spice Difference -20dB")
% title("Difference in Output of Pink Noise for NeuralPi and Spice Models -20dB")
% 
% nexttile
% semilogx(clean_f, 10*log10(((neuralpi_smooth_40db-hardware_smooth_40db)).^2))
% hold on
% semilogx(clean_f, 10*log10(((spice_smooth_40db-hardware_smooth_40db)).^2))
% axis([50 20e3 -120 -60])
% xlabel("f, [Hz]")
% ylabel("Amplitude")
% legend("NeuralPi Difference -40dB", "Spice Difference -40dB")
% title("Difference in Output of Pink Noise for NeuralPi and Spice Models -40dB")
% 
%  
