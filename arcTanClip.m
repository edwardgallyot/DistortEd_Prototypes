function [out] = arcTanClip(in, coeff)
% ARCTAN CLIP Soft Clipping using the ArcTan Equation
%   All Values are scaled based on the arc tan equation
%   The Amount to which it is scaled is coeff
%   The Coefficient is typically between 1 and 10

N = length(in);
out = zeros(N, 1); 

for n = 1:N
    out(n, 1) = (2/pi) * atan(in(n,1)*coeff);
end
