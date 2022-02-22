function [out] = hardClip(in, threshold)
%   HARDCLIP Clipping based upon a threshold
%   All Values over the threshold are threshold
%   All Values under the threshold are -threshold

N = length(in);
out = zeros(N, 1); 

for n = 1:N
    if in(n,1) >= threshold
        out(n,1) = threshold;
    elseif in(n, 1) <= -threshold
        out(n,1) = -threshold;
    else
        out(n, 1) = in(n, 1); 
    end
end
