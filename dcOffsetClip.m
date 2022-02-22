function [out] = dcOffsetClip(in, dc)
%   DC OFFSET CLIP Soft Clipping using the Quintic Equation
%   All Values are scaled based on the quintic equation
%   The Amount to which it is scaled is coeff
%   The Coefficient should typically be between 0 and 1
%   The signal can also be offset by a certain dc

N = length(in);
x = in + dc;
y = zeros(N, 1);


for n = 1:N
    if abs(x(n, 1)) > 1
        x(n, 1) = sign(x(n, 1));
    end
    
    y(n, 1) = x(n, 1) - ((1 / 5)) * (x(n, 1)^5);
end

out = y - dc;