clc;
clear;

% To do
% 1. Update graph realtime, with flexible dynamic arrary sizes under a while loop

dimension = 100;
x = zeros(1,dimension);
y = zeros(1,dimension);

cmd =  'find /home/avi/WORK/os/build -mmin 2 | wc --line'

%while true
for ii=1:dimension
    x(ii) = ii
    [~, count] = system (cmd);
    y(ii) = str2num(count)
    %hold on
    plot (x, y, "linewidth", 4, "markersize", 10)
    xlabel ("Time: Updated every 2 seconds");
    ylabel ("Number of files modified in last 2 seconds");
    title ("Master-control linux image build");
    pause (2);
end