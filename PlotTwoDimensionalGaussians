function PlotTwoDimensionalGaussians(R1,R2,MU1,MU2,SIGMA1,SIGMA2)

d_x1_x2 = 0.1;

x11 = R1(1,1):d_x1_x2:R1(1,2);
x12 = R1(2,1):d_x1_x2:R1(2,2);
x21 = R2(1,1):d_x1_x2:R2(1,2);
x22 = R2(2,1):d_x1_x2:R2(2,2);

[X11,X12] = meshgrid(x11,x12);
[X21,X22] = meshgrid(x21,x22);

X11p = X11 - MU1(1);
X12p = X12 - MU1(2);
X21p = X21 - MU2(1);
X22p = X22 - MU2(2);

SIGMA1inv = inv(SIGMA1);
SIGMA2inv = inv(SIGMA2);

figure('Name','Two-Dimensional Gaussian PDFs');

colormap([1 0 0;0 0 1]);
surf(X11,X12,P1);
hold on
surf(X21,X22,P2);
hold off
xlabel('Feature_1');
ylabel('Feature_2');
zlabel('Probability');

figure('Name','Two-Dimensional Gaussian Surfaces');
hold on
contour(X11,X12,P1);
contour(X21,X22,P2);
hold off
grid on
xlabel('Feature_1');
ylabel('Feature_2');

end
