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
R1 = minmax(C1');
R2 = minmax(C2');
PlotTwoDimensionalGaussians(R1,R2,MU1,MU2,SIGMA,SIGMA);
p_min = -1;
p_max = 1;
dp = 0.05;
p_range = p_min:dp:p_max;

% Initialize Figure.
figure('Name','Capture P Ranging');
for p = p_range
    clf
    axis equal
    SIGMA = [1 p;p 1];
    C1 = mvnrnd(MU1,SIGMA,N);
    C2 = mvnrnd(MU2,SIGMA,N);
    hold on
    plot(C1(:,1),C1(:,2),'or','LineWidth',2);
    plot(C2(:,1),C2(:,2),'og','LineWidth',2);
    grid on
    xlabel('x_1');
    ylabel('x_2');
    pause(0.1);
end
