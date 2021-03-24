clear all;
clear;
clear functions;

load './data/steptest.mat';


figure(1)
plot(t, input)
figure(2)
hold on
plot(t, outputL)
plot(t, outputR)
hold off