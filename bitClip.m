function [out] = bitClip(in, bits)
%   BITCRUSH CLIPPING Modelling Bit Reduction
%   Reducing the amount of bits that represent amp values
%   2^bits is the amount of values possible
%   The value needs to be prepped, calculated and changed back
%   to floats

ampValues = 2^bits;

tmpIn = 0.5 * in + 0.5;

scaleInput = ampValues * tmpIn;

roundInput = round(scaleInput);

prepOut = roundInput / ampValues;

out = 2 * prepOut - 1;