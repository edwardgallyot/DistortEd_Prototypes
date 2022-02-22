function [out] = dbAmpChange(in,dbChange)
%DBAMPCHANGE Changes the amplitude of the signal in DB
    scale = 10^(dbChange/20);
    out = scale * in;
end

