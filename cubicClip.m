function [out] = cubicClip(in, coeff)
% CUBUIC CLIP Soft Clipping using the Cubic Equation
%   All Values are scaled based on the cubic equation
%   The Amount to which it is scaled is coeff

N = length(in);
out = zeros(N, 1); 

for n = 1:N
    out(n, 1) = in(n, 1) - ((coeff * (1 / 3)) * (in(n, 1)^3));
end
