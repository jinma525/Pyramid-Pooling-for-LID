%%% This script evaluates a transpose convolution hint
%%% Give the proper parameter and it can show how the result element can
%%% be gotten
%%% MatConvNet Convolutional Neural Networks for MATLAB
%%% Andrea Vedaldi, Karel Lenc
%%% Section 3.2
clear; clc;
php = 0;    % top cropping
phm = 0;    % botton cropping
pwp = 0;    % left cropping
pwm = 0;    % right cropping
sh = 2;     % stride height
sw = 2;     % stride weight
HH = 3;     % filter height
WW = 3;     % filter weight
iii = 1;    % output height
jjj = 2;    % output weight

X = ['y', num2str(jjj), num2str(iii), '='];
disp(X);
for ii = 0 : floor((HH - 1) / sh)
    fy = 1 + sh * ii + mod(iii + phm - 1, sh);
    xy = 1 - ii + floor((iii + phm - 1) / sh);
    for jj = 0 : floor((WW - 1) / sw)
        fx = 1 + sw * jj + mod(jjj + pwm - 1, sw);
        xx = 1 - jj + floor((jjj + pwm - 1) / sw);
        X = ['f', num2str(fy), num2str(fx), 'x', num2str(xy), num2str(xx)];
        disp(X);
    end
end
