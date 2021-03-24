clear all;
clear;
close all;

load './data/gyrotest.mat';

angle_offset = mean(angle_rad)-1;
angle_rad_zeroed = angle_rad - angle_offset;
[peaks, angle_peaks_loc] = findpeaks(angle_rad_zeroed, t);
peaks = [0 - angle_offset;peaks];
angle_peaks_loc = [0;angle_peaks_loc];
log_peaks = log(peaks);


angle_rad_ff = polyfit(angle_peaks_loc, log_peaks, 1);
peaks_fit = polyval(angle_rad_ff, t);

figure(1)
hold on
plot(t, angle_rad)
plot(t, angle_rad_zeroed)
plot(angle_peaks_loc, peaks ,'o');
plot(angle_peaks_loc, peaks + angle_offset,'o');
plot(angle_peaks_loc, log_peaks ,'o');
plot(angle_peaks_loc, log_peaks + angle_offset,'o');
plot(t, peaks_fit)
plot(t, peaks_fit + angle_offset)
plot(t, exp(peaks_fit))
plot(t, exp(peaks_fit) + angle_offset)



% WIff = polyfit(Voutw(11:41),(Ioutw(11:41)), 1);
% WIfit = polyval(WIff, Voutw);
hold off