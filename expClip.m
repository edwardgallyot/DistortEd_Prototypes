function [out] = expClip(in, coeff)
% EXPONENTIAL CLIP Soft Clipping using absolute e numbers
%   All Values are scaled based on the arc tan equation
%   The Amount to which it is scaled is coeff
%   The Coefficient is typically between 1 and 10

N = length(in);
out = zeros(N, 1); 

for n = 1:N
    out(n, 1) = sign(in(n, 1)) * (1 - exp(-abs(coeff*in(n, 1))));
end