clear; clc;

sampleRate = 44100;
time = 1 / sampleRate;

t = [0:time:1-time];

f = 2500;
x = sin(2*pi*f*t);
y = square(2*pi*f*t);

thd (y, sampleRate);

r = thd(y, sampleRate);

percentTHD = 10^(r/20) * 100
