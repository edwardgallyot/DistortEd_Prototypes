clear; clc;

sampleRate = 44100;
timePerSecond = 1 / sampleRate;

t = [0:timePerSecond:1].';
f1 = 2;
f2 = 2500;

in1 = sin(2*pi*f1*t);
in2 = sin(2*pi*f2*t);

% Add in Different Distortions to out to test the responses
% Square Wave
%out1 = square(2*pi*f1*t);
%out2 = square(2*pi*f2*t);

% Infinite Clip
% out1 = infiniteClip(in1);
% out2 = infiniteClip(in2);

% Half Wave Rectification
% out1 = halfWaveRect(in1);
% out2 = halfWaveRect(in2);

% Full Wave Rectification
out1 = fullWaveRect(in1);
out2 = fullWaveRect(in2);

% Plotting the input Wave Forms
figure(1);
subplot(1,2,1);
plot(t, in1, t, out1);
axis([0 1 -1.1 1.1]);
xlabel('Time (sec.)');
ylabel('Amplitude');
title('WaveForm');

% Plotting the Characteristic Curve
subplot(1, 2, 2);
plot(in1, in1, in1, out1);
axis([-1 1 -1.1 1.1]);
xlabel('Input Amplitude');
ylabel('Output Amplitude');
legend('Linear', 'Distortion'); title('Characteristic Curve');

% Plotting the thd
figure(2);
thd(out2, sampleRate, 5);
axis([0 24 -50 0]);
