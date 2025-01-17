% Part 1: Record, Save, and Play the First Signal (Input Signal)
clear; close all; clc; % Clear workspace
%% Record Voice Data from Microphone (Original Input Signal)
fs = 44100; % Sampling frequency (44.1 kHz, standard for audio)
duration = 5; % Duration of recording (seconds)
nBits = 16; % Number of bits per sample
nChannels = 1; % Mono audio
disp('Recording... Speak into the microphone.');
recObj1 = audiorecorder(fs, nBits, nChannels); % Create recorder object
recordblocking(recObj1, duration); % Record for 'duration' seconds
disp('Recording complete.');
% Retrieve and normalize the audio data
audioData1 = getaudiodata(recObj1); % Retrieve recorded audio signal
audioData1 = audioData1 / max(abs(audioData1)); % Normalize input signal
time1 = linspace(0, duration, length(audioData1)); % Time vector
% Plot the recorded voice data
figure;
plot(time1, audioData1, 'b');
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Recorded Voice Signal (Normalized)');
grid on;
% Save the first recording


filename1 = 'original_voice.wav'; % Specify file name
audiowrite(filename1, audioData1, fs); % Save as a .wav file
disp(['Original input audio saved as ', filename1]);
%% Play Back the Recorded Signal
disp('Playing back the recorded signal...');
sound(audioData1, fs); % Play the audio
pause(duration + 1); % Pause to ensure playback finishes
disp('Part 1 complete: Original signal recorded, saved, and played back.');
disp('Proceed to Part 2 after recording the signal with an external device.');




% Part 2: Load External Recording and Compare Both Signals
% Clear workspace
clear; close all; clc;
%% Load the Original Signal (Input Signal)
filename1 = 'original_voice.wav'; % Name of the original recorded file
[audioData1, fs] = audioread(filename1); % Load the original signal
audioData1 = audioData1 / max(abs(audioData1)); % Normalize input signal
duration = length(audioData1) / fs; % Duration of the original signal
time1 = linspace(0, duration, length(audioData1)); % Time vector for original signal
%% Load the External Recording (External Device Signal)
% Assume the external recording file is named 'external_recorded.wav'
disp('Loading the external recorded signal...');
[externalData, fs_external] = audioread('external_recorded.wav'); % Load external file
% Check if sampling rates match
if fs ~= fs_external
error('Sampling rate mismatch between the original and external recordings!');
end
% Normalize the external recording
externalData = externalData / max(abs(externalData));
time2 = linspace(0, duration, length(externalData)); % Time vector for external recording
%% Compare Input and Output Signals
figure;
plot(time1, audioData1, 'b', 'LineWidth', 1.5); hold on;
plot(time2, externalData, 'r--', 'LineWidth', 1.5);

xlabel('Time (s)');
ylabel('Amplitude');
title('Comparison of Input Signal and External Recorded Signal');
legend('Input Signal', 'External Recorded Signal');
grid on;
%% Display Results
disp('Comparison complete: Input signal and external device recorded signal plotted.');