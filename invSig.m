function [ mean, unc ] = invSig( A,B )

unc1 = 0;
mean1 = 0;
for i=1:5
    unc1 = unc1 + (1/(B(i)^2));
    mean1 = mean1 + (A(i)/(B(i)^2));
end

mean = mean1/unc1;
unc = sqrt(1/unc1);

end

