% This script file simulates the data generation process for a binary
% classification problem in a two-dimensional feature space. Moreover, the 
% class-conditional probability density functions for the two classes are
% given by the normal distribution. Specifically, we assume that:

% p(x|w1) = N_2(MU1,SIGMA1) and p(x|w2) = N_2(MU2,SIGMA2)
%______________________________________________________________________________________

% Set the centers MU1 and MU2 for the two probability density functions.
MU1 = [4 4]';
MU2 = [8 8]';

% Set the common covariance matrix for the two probability density
% functions.
SIGMA = eye(2);

% Set the number of points to be sampled from each distribution.
N = 1500;

% Initialize the random seed for the normal random generator.
rng(0);

% Generate samples for both classes.
C1 = mvnrnd(MU1,SIGMA,N);
C2 = mvnrnd(MU2,SIGMA,N);

% Plot the data samples from both distributions.
figure('Name','Data Distribution');
hold on
plot(C1(:,1),C1(:,2),'or','LineWidth',2);
plot(C2(:,1),C2(:,2),'og','LineWidth',2);
grid on
xlabel('x_1');
ylabel('x_2');

% Compute the [2x2] matrices R1 and R2 which are of the following form:
%      |x11_min x11_max|          |x21_min x22_max|
% R1 = |x12_min x12_max| and R2 = |x22_min x22_max|
R1 = minmax(C1');
R2 = minmax(C2');

% Plot the two-dimensional probabibility denstity functions.
PlotTwoDimensionalGaussians(R1,R2,MU1,MU2,SIGMA,SIGMA);

% Set the minimum and maximum values for the p parameter of the covariance
% matrix.
p_min = -1;
p_max = 1;
% Set the step parameter for the parameter p.
dp = 0.05;
% Set the range of the parameter p.
p_range = p_min:dp:p_max;

% Initialize Figure.
figure('Name','Capture P Ranging');

% Loop through the various p values.
for p = p_range
    clf
    axis equal
    % Set the covariance matrix for both classes.
    SIGMA = [1 p;p 1];
    % Generate samples for both classes.
    C1 = mvnrnd(MU1,SIGMA,N);
    C2 = mvnrnd(MU2,SIGMA,N);
    % Plot the data samples from both distributions.
    hold on
    plot(C1(:,1),C1(:,2),'or','LineWidth',2);
    plot(C2(:,1),C2(:,2),'og','LineWidth',2);
    grid on
    xlabel('x_1');
    ylabel('x_2');
    % Pause for a little.
    pause(0.1);
end 
