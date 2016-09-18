function [fitresult] = sinFit(A1, A2, B)

[xData, yData] = prepareCurveData( A1, A2 );

% Set up fittype and options.
ft = fittype( 'a*sin(b*(x-c))+d', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';

opts.Lower = B(1,:);
opts.StartPoint = B(2,:);
opts.Upper = B(3,:);

% Fit model to data.
[fitresult] = fit( xData, yData, ft, opts );



