function [fitresult] = exponentialFit(A1, A2)

[xData, yData] = prepareCurveData( A1, A2 );

% Set up fittype and options.
ft = fittype( 'a*exp(-b*x)+c', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.297777836900035 0.997699793302315 0.711380808964214];

% Fit model to data.
[fitresult] = fit( xData, yData, ft, opts );
