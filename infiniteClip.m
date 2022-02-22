function [out] = infiniteClip(in)
%INFINITECLIP Clipping Based on Polarity
%   All positive values are 1
%   All negative values are -1

N = length(in);

for n = 1:N
    if in(n,1) >= 0
        out(n,1) = 1;
    else
        out(n,1) = -1;
    end
end

