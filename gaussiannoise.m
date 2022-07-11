%% White Gaussian Noise addition to a sinusoidal signal
%
% White just means that there is no correlation among the noise samples.
% This results in a flat power spectral density, hence the analogy with
% "white" light.
% https://it.mathworks.com/matlabcentral/answers/36138-how-to-add-gaussian-noise-to-the-1d-signal
clc; clear; close;

x = 0:0.1:2*pi;
S = sin(x);

figure (1)
set(gcf, 'Position',  [430, 300, 1000, 400])
% horizontal pos,vertical pos, horiz.size, vert.size

subplot(121)
plot(x,S)
title('Added White Gaussian Noise to sinus w/ 10')
xlabel('x'); ylabel('y'); hold on

Y = awgn(S,10,'measured','linear');
plot(x,Y); hold off

subplot(122)
plot(x,S)
title('Added White Gaussian Noise to sinus w/ 5')
xlabel('x'); ylabel('y'); hold on

Y = awgn(S,5,'measured','linear');
plot(x,Y); hold off

% did this on the way:
% x = 0:0.1:2*pi;
% H = sin(x);
% GH = H.*fspecial('gaussian', size(H,2),10);
% plot(x,GH)