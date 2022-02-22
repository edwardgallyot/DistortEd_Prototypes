function [out] = pieceWiseClip(in)
% PIECE WISE CLIP Soft Clipping using absolute e numbers
%   All Values are scaled based on the arc tan equation
%   The Amount to which it is scaled is coeff
%   The Coefficient is typically between 1 and 10

N = length(in);
out = zeros(N, 1); 

for n = 1:N
    if abs(in(n,1)) <= 1/3
        out(n, 1) = 2 * in(n,1);
    elseif abs(in(n, 1)) > 2/3
        out(n, 1) = sign(in(n, 1));
    else
        out(n, 1) = sign(in(n, 1)) * (3 - (2-3*abs(in(n,1)))^2)/3;
    end
end