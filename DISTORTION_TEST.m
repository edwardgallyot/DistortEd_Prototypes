clear; clc; close all;

[in, sampleRate] = audioread("Jazz_Sax.wav");

in = in(:,1);

% Add in Different Distortions to out to test the responses
% Square Wave
% out = square(2*pi*f1*t);
% 
% Infinite Clip
% out = infiniteClip(in1);
% 
% Half Wave Rectification
% out = halfWaveRect(in1);
% 
% Full Wave Rectification
% out = fullWaveRect(in1);
% 
% Hard Clipping Based on a Threshold
% threshold = 0.5;
% out = hardClip(in1, threshold);
% 
% Cubic Clipping
% coeff = 1;
% out = cubicClip(in1, coeff);
% 
% ArcTan Clipping
% coeff = 7;
% out = arcTanClip(in1, coeff);
% 
% Sine Clipping
% out = sineClip(in1);
% 
% Exponential Clipping
% coeff = 3;
% out = expClip(in1, coeff);
% 
% Piece Wise Clipping
% out = pieceWiseClip(in1);
% 
% Diode Clipping
% out = diodeClip(in1);
% 
% Bit Crush Clipping
%
% 
% DC Offset Clipping
% dc = -0.9;
% out = dcOffsetClip(in, dc);

% Mix should be between 0 and 1
mix = 1;
out = mix * out + (1 - mix) * in; 

sound(out, sampleRate);


