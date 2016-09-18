decay
calib

best_beta_red = zeros(2,4);
best_beta_yellow = zeros(2,3);
best_beta_green = zeros(2,3);

for i=1:4
    B1 = beta_red(1,i*5-4:i*5);
    B2 = beta_red(2,i*5-4:i*5);
    [mean, unc] = invSig(B1,B2);
    best_beta_red(1,i) = mean;
    best_beta_red(2,i) = unc;
    
    if i < 4
    B1 = beta_yellow(1,i*5-4:i*5);
    B2 = beta_yellow(2,i*5-4:i*5);
    [mean, unc] = invSig(B1,B2);
    best_beta_yellow(1,i) = mean;
    best_beta_yellow(2,i) = unc;
    
    B1 = beta_green(1,i*5-4:i*5);
    B2 = beta_green(2,i*5-4:i*5);
    [mean, unc] = invSig(B1,B2);
    best_beta_green(1,i) = mean;
    best_beta_green(2,i) = unc;
    end
end


delV_red;
delV_yellow;
delV_green;

% Conversion factor for volts to nanometers

red_wavelength = 632.8;

red_calib = delV_red(1,:);
red_calib_unc = delV_red(2,:);

const = red_wavelength./(2.*red_calib(1:5));
const_unc = (red_wavelength./(2.*red_calib(1:5))).*(red_calib_unc(1:5));
[constant_mean, constant_unc] = invSig(const, const_unc);

yellow_calib = delV_yellow(1,:);
yellow_calib_unc = delV_yellow(2,:);

[delV_yellow_mean, delV_yellow_unc] = invSig(yellow_calib(1:5),yellow_calib_unc(1:5));

yellow_wavelength = (delV_yellow_mean*constant_mean*2);
yellow_wavelength_unc = sqrt((yellow_wavelength^2)*((delV_yellow_unc/delV_yellow_mean)^2 + (constant_unc/constant_mean)^2));

green_calib = delV_green(1,:);
green_calib_unc = delV_green(2,:);

[delV_green_mean, delV_green_unc] = invSig(green_calib(11:15),green_calib_unc(11:15));

green_wavelength = (delV_green_mean*constant_mean*2);
green_wavelength_unc = sqrt((green_wavelength^2)*((delV_green_unc/delV_green_mean)^2 + (constant_unc/constant_mean)^2));

best_beta_yellow
best_beta_green
best_beta_red

constant_mean
constant_unc

yellow_wavelength
yellow_wavelength_unc

green_wavelength
green_wavelength_unc








