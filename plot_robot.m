% plot robot
S=0.1; S2=0.5*S; D=0.1;
plot([P(1), P(1)+cos(P(3))*S], [P(2), P(2)+sin(P(3))*S], 'r')
hold on
plot([P(1)+cos(P(3))*S, P(1)+cos(P(3)+D)*S2], [P(2)+sin(P(3))*S, P(2)+sin(P(3)+D)*S2], 'r')
plot([P(1)+cos(P(3))*S, P(1)+cos(P(3)-D)*S2], [P(2)+sin(P(3))*S, P(2)+sin(P(3)-D)*S2], 'r')

%plot path
plot([P(1), P_prev(1)], [P(2), P_prev(2)], 'b--')
plot(P(1), P(2), 'bo')


axis([-1, 10, -1, 10])
P_prev = P;