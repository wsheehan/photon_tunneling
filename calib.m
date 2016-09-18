%clear all
clf

delV_red = zeros(1,20);

for i=1:5
    file = ['Data/PT_160322_00',num2str(i+6),'.csv'];
    A = csvread(file,1,0);
    A1 = A(250:380,1);
    A2 = A(250:380,2);
    B = [1 12 3.2 1; 1.2 18 3.6 1.5; Inf 24 4 2];
    [fitresult] = sinFit(A1,A2,B);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    delV_red(1,i) = (2*pi)/c(2);
    delV_red(2,i) = ((2*pi)/(c(2)^2))*unc(2);

    file = ['Data/PT_160324_0',num2str(i+36),'.csv'];
    A = csvread(file,1,0);
    A1 = A(100:300,1);
    A2 = A(100:300,2);    
    B = [.5 9 3.2 1; 1.5 10 3.6 1.5; 3 16 4 2];
    [fitresult] = sinFit(A1,A2,B);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    delV_red(1,i+10) = (2*pi)/c(2);
    delV_red(2,i+10) = ((2*pi)/(c(2)^2))*unc(2);

    file = ['Data/PT_160324_0',num2str(i+46),'.csv'];
    A = csvread(file,1,0);
    A1 = A(100:300,1);
    A2 = A(100:300,2);
    B = [.5 9 3.2 1; 1.5 10 3.6 1.5; 3 16 4 2];
    [fitresult] = sinFit(A1,A2,B);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    delV_red(1,i+5) = (2*pi)/c(2);
    delV_red(2,i+5) = ((2*pi)/(c(2)^2))*unc(2);

    file = ['Data/PT_160324_0',num2str(i+56),'.csv'];
    A = csvread(file,1,0);
    A1 = A(100:300,1);
    A2 = A(100:300,2);
    B = [.2 9 3.2 0.5; .5 10 3.6 1.5; 3 16 4 2];
    [fitresult] = sinFit(A1,A2,B);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    delV_red(1,i+15) = (2*pi)/c(2);
    delV_red(2,i+15) = ((2*pi)/(c(2)^2))*unc(2);
end

delV_yellow = zeros(1,20);

for i=1:5
    file = ['Data/PT_160322_0',num2str(i+11),'.csv'];
    A = csvread(file,1,0);
    A1 = A(250:380,1);
    A2 = A(250:380,2);
    B = [0.3 12 3.2 0.5; 1.2 18 3.6 2; Inf 24 4 3];
    subplot(2,3,i)
    [fitresult] = sinFit(A1,A2,B);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    delV_yellow(1,i) = (2*pi)/c(2);
    delV_yellow(2,i) = ((2*pi)/(c(2)^2))*unc(2);

    file = ['Data/PT_160324_00',num2str(i+6),'.csv'];
    A = csvread(file,1,0);
    A1 = A(100:300,1);
    A2 = A(100:300,2);    
    B = [.1 9 3.2 0.2; 1.5 12.9 3.6 1.5; 3 16 4 2];
    [fitresult] = sinFit(A1,A2,B);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    delV_yellow(1,i+5) = (2*pi)/c(2);
    delV_yellow(2,i+5) = ((2*pi)/(c(2)^2))*unc(2);

    file = ['Data/PT_160324_0',num2str(i+16),'.csv'];
    A = csvread(file,1,0);
    A1 = A(100:300,1);
    A2 = A(100:300,2);
    B = [.05 6 3.2 0.1; .5 8 3.6 1; 3 16 4 2];
    subplot(2,3,i)
    [fitresult] = sinFit(A1,A2,B);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    delV_yellow(1,i+10) = (2*pi)/c(2);
    delV_yellow(2,i+10) = ((2*pi)/(c(2)^2))*unc(2);

    file = ['Data/PT_160324_0',num2str(i+26),'.csv'];
    A = csvread(file,1,0);
    A1 = A(100:300,1);
    A2 = A(100:300,2);
    B = [.2 9 3.2 0.5; .5 10 3.6 1.5; 3 16 4 2];
    subplot(2,3,i)
    [fitresult] = sinFit(A1,A2,B);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    delV_yellow(1,i+15) = (2*pi)/c(2);
    delV_yellow(2,i+15) = ((2*pi)/(c(2)^2))*unc(2);
end

delV_green = zeros(1,20);

for i=1:5
    
%%%%%%%%%%%%%%%%%%%%%% Bad Data, Forgot to turn on PZT %%%%%%%%%%%%%%%%%%%%%%%%
    
%     file = ['Data/PT_160322_0',num2str(i+16),'.csv'];
%     A = csvread(file,1,0);
%     A1 = A(250:380,1);
%     A2 = A(250:380,2);
%     B = [0.05 12 3.2 0.05; 1.2 18 3.6 2; Inf 24 4 3];
%     %subplot(2,3,i)
%     [fitresult] = sinFit(A(:,1),A(:,2),B)
%     c = coeffvalues(fitresult);
%     c_err = confint(fitresult, 0.95);
%     unc = (c_err(2,:) - c_err(1,:))/2;
%     delV_green(1,i) = (2*pi)/c(2);
%     delV_green(2,i) = ((2*pi)/(c(2)^2))*unc(2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    file = ['Data/PT_160322_0',num2str(i+26),'.csv'];
    A = csvread(file,1,0);
    A1 = A(100:300,1);
    A2 = A(100:300,2);    
    B = [.5 9 3.2 0.2; 1.5 18 3.6 1.5; 3 30 4 2];
    subplot(2,3,i);
    [fitresult] = sinFit(A1,A2,B);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    delV_green(1,i+5) = (2*pi)/c(2);
    delV_green(2,i+5) = ((2*pi)/(c(2)^2))*unc(2);

    file = ['Data/PT_160322_0',num2str(i+36),'.csv'];
    A = csvread(file,1,0);
    A1 = A(100:300,1);
    A2 = A(100:300,2);
    B = [.05 6 3.2 0.1; .5 16 3.6 1; 3 26 4 2];
    subplot(2,3,i)
    [fitresult] = sinFit(A1,A2,B);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    delV_green(1,i+10) = (2*pi)/c(2);
    delV_green(2,i+10) = ((2*pi)/(c(2)^2))*unc(2);

    file = ['Data/PT_160322_0',num2str(i+46),'.csv'];
    A = csvread(file,1,0);
    A1 = A(150:350,1);
    A2 = A(150:350,2);
    B = [.5 9 3.2 0.5; 1.1 18.4 3.6 1.5; 3 28 4 2];
    subplot(2,3,i)
    [fitresult] = sinFit(A1,A2,B);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    delV_green(1,i+15) = (2*pi)/c(2);
    delV_green(2,i+15) = ((2*pi)/(c(2)^2))*unc(2);
end
