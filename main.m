close all
clear all

M = 3;
N = 250;
J = 40;
T = 1;
int = [0 2];
u = @(x) sin(x) + cos(x);

[x, Q, q_h] = dg(M, N, J, T, int, u);

% create plot
for j = 1:J
    plot(x(j, :), Q(j, :), '--', ...
         x(j, :), q_h(j, :))
    %axis([0 1 -0.2 1.2])
    title("M = " + num2str(M) + ...
        ", T = " + num2str(T) + ", \Delta t = 1/" + num2str(N))
    hold on;
end
