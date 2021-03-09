clear all;
clear figure;
clear functions;

load './data/steptest.mat';



plot(t, input)
figure
hold on
plot(t, outputL)
plot(t, outputR)
hold off