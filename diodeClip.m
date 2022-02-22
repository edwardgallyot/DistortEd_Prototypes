function [out] = diodeClip(in)
%   DIODE CLIPPING Modelling the Shockley Diode
%   Thermal Voltage, Emission Coefficient and Saturation Current are
%   Constant

thermalVoltage = 0.0253;
emmisionCoeff = 1.68;
saturationCurrent = 0.105;


N = length(in);
out = zeros(N, 1); 

for n = 1:N
    out(n, 1) = saturationCurrent * (exp(0.1*in(n,1) / (emmisionCoeff * thermalVoltage)) - 1);
end