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
