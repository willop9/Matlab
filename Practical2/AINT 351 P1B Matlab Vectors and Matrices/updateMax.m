function M = updateMax(M,s)
%UPDATEMAX Summary of this function goes here
%   Detailed explanation goes here
%selecting desired row
r = selectRow(M,s);
%Finding index of maximum
i = indexOfMax(r);
%Selecting the maximum value from that row
m = selectMax(r);
%multiplying by 1.2
o = m*1.2;

M(r:i) = o;
end

