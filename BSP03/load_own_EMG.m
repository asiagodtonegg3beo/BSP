%% HW1 請將上週錄的EMG與ECG檔案讀入並繪出，使用subplot將資料存成上下兩張圖。
%% (請自行查找txt檔要用哪個函式讀入)  (25分)

clear,

ecg_data = readtable('M103010198_ECG.txt');
emg_data = readtable('M103010198_EMG.txt');

% 取第二行的CH1資料
ecg_val = ecg_data(:, 2);
emg_val = emg_data(:, 2);

subplot(2, 1, 1);
stackedplot(ecg_val);
title('M103010198 ECG.txt');

subplot(2, 1, 2);
stackedplot(emg_val);
title('M103010198 EMG.txt');

saveas(gcf, 'subplot.png')
disp('file save as subplot.png')

%% HW2 請將兩筆資料輸出成csv檔。(25分)

writetable(ecg_data, 'ecg_data.csv');
disp('file save as ecg_data.csv');
writetable(emg_data, 'emg_data.csv');
disp('file save as emg_data.csv');


%% HW3 請將兩筆資料輸出成mat檔。(25分)

save('ecg_data.mat', 'ecg_data');
disp('file save as ecg_data.mat');
save('emg_data.mat', 'emg_data');
disp('file save as emg_data.mat');

% test: load .mat file, convert to table

%ecg_mat = struct2table(load('ecg_data.mat'));
%emg_mat = struct2table(load('emg_data.mat'));






