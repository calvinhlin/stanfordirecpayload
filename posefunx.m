function F = posefunx(relpose, s, dispu, dispw, dUW)
    F(1) = norm(-dispu(s,1) + relpose(1)*dispw(s,1) + dUW(s,1)*relpose(2)) - dUW(s-1,1);
    F(2) = norm(-dispu(s+1,1) + relpose(1)*dispw(s+1,1) + dUW(s+1,1)*relpose(2)) - dUW(s,1);
end