function [out] = halfWaveRect(in)
%HALFWAVERECT Half Wave Rectification
%   All positive values are the signal at that point in time
%   All negative values are 0

N = length(in);

for n = 1:N
    if in(n,1) >= 0
        out(n,1) = in(n, 1);
    else
        out(n,1) = 0;
    end
end
