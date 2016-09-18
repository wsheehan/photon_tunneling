clear all
clf

beta_red = zeros(2,20);

for i=1:5
    file = ['Data/PT_160322_00',num2str(i+1),'.csv'];
    A = csvread(file,1,0);
    A1 = A(:,1);
    A2 = A(:,2);
    subplot(4,5,i)
    [fitresult] = exponentialFit(A1,A2);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    beta_red(1,i) = c(2)/2;
    beta_red(2,i) = unc(2)/2;
     
    file = ['Data/PT_160324_0',num2str(i+31),'.csv'];
    A = csvread(file,1,0);
    A1 = A(:,1);
    A2 = A(:,2);
    subplot(4,5,i+5)
    [fitresult] = exponentialFit(A1,A2);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    beta_red(1,i+5) = c(2)/2;
    beta_red(2,i+5) = unc(2)/2;
    
    file = ['Data/PT_160324_0',num2str(i+41),'.csv'];
    A = csvread(file,1,0);
    A1 = A(:,1);
    A2 = A(:,2);
    subplot(4,5,i+10)
    [fitresult] = exponentialFit(A1,A2);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    beta_red(1,i+10) = c(2)/2;
    beta_red(2,i+10) = unc(2)/2;
    
    file = ['Data/PT_160324_0',num2str(i+51),'.csv'];
    A = csvread(file,1,0);
    A1 = A(:,1);
    A2 = A(:,2);
    subplot(4,5,i+15)
    [fitresult] = exponentialFit(A1,A2);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    beta_red(1,i+15) = c(2)/2;
    beta_red(2,i+15) = unc(2)/2;
end

beta_yellow = zeros(2,15);

for i=1:5
    file = ['Data/PT_160324_00',num2str(i),'.csv'];
    A = csvread(file,1,0);
    A1 = A(:,1);
    A2 = A(:,2);
    subplot(3,5,i)
    [fitresult] = exponentialFit(A1,A2);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    beta_yellow(1,i) = c(2)/2;
    beta_yellow(2,i) = unc(2)/2;
    
    file = ['Data/PT_160324_0',num2str(i+11),'.csv'];
    A = csvread(file,1,0);
    A1 = A(:,1);
    A2 = A(:,2);
    subplot(3,5,i+5)
    [fitresult] = exponentialFit(A1,A2);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    beta_yellow(1,i+5) = c(2)/2;
    beta_yellow(2,i+5) = unc(2)/2;
    
    file = ['Data/PT_160324_0',num2str(i+21),'.csv'];
    A = csvread(file,1,0);
    A1 = A(:,1);
    A2 = A(:,2);
    subplot(3,5,i+10)
    [fitresult] = exponentialFit(A1,A2);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    beta_yellow(1,i+10) = c(2)/2;
    beta_yellow(2,i+10) = unc(2)/2;
    
end

beta_green = zeros(2,15);

for i=1:5
    file = ['Data/PT_160322_0',num2str(i+21),'.csv'];
    A = csvread(file,1,0);
    A1 = A(:,1);
    A2 = A(:,2);
    subplot(3,5,i)
    [fitresult] = exponentialFit(A1,A2);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    beta_green(1,i) = c(2)/2;
    beta_green(2,i) = unc(2)/2;
    
    file = ['Data/PT_160324_0',num2str(i+31),'.csv'];
    A = csvread(file,1,0);
    A1 = A(:,1);
    A2 = A(:,2);
    subplot(3,5,i+5)
    [fitresult] = exponentialFit(A1,A2);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    beta_green(1,i+5) = c(2)/2;
    beta_green(2,i+5) = unc(2)/2;
    
    file = ['Data/PT_160324_0',num2str(i+41),'.csv'];
    A = csvread(file,1,0);
    A1 = A(:,1);
    A2 = A(:,2);
    
    [fitresult] = exponentialFit(A1,A2);
    c = coeffvalues(fitresult);
    c_err = confint(fitresult, 0.95);
    unc = (c_err(2,:) - c_err(1,:))/2;
    beta_green(1,i+10) = c(2)/2;
    beta_green(2,i+10) = unc(2)/2;
end

