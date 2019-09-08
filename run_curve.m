P = [0;0;0];
P_prev = P;

figure;


for i=1:20
    P = run_odom(P, 30, 40);
    disp('Position:')
    disp(P)
    plot_robot
end
