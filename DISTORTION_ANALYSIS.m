clear; clc; close all;

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
% out1 = fullWaveRect(in1);
% out2 = fullWaveRect(in2);

% Hard Clipping Based on a Threshold
% threshold = 0.5;
% out1 = hardClip(in1, threshold);
% out2 = hardClip(in2, threshold);

% Cubic Clipping
coeff = 1;
out1 = cubicClip(in1, coeff);
out2 = cubicClip(in2, coeff);

% ArcTan Clipping
% coeff = 7;
% out1 = arcTanClip(in1, coeff);
% out2 = arcTanClip(in2, coeff);

% Sine Clipping
% out1 = sineClip(in1);
% out2 = sineClip(in2);

% Exponential Clipping
% coeff = 3;
% out1 = expClip(in1, coeff);
% out2 = expClip(in2, coeff);

% Piece Wise Clipping
% out1 = pieceWiseClip(in1);
% out2 = pieceWiseClip(in2);

% Diode Clipping
% out1 = diodeClip(in1);
% out2 = diodeClip(in2);

% Bit Crush Clipping
% bits = 8;
% out1 = bitClip(in1, bits);
% out2 = bitClip(in2, bits);

% DC Offset Clipping
% dc = -0.2;
% out1 = dcOffsetClip(in1, dc);
% out2 = dcOffsetClip(in2, dc);

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

