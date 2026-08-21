% Numerically simulate a model describing the balance of a loan. The
% initial loan is $80,000, it accrues interest at a rate of 1% per month,
% and a payment of $880.87 is made each month.
%
% The resulting model is a first-order linear difference equation of the
% form
%   a(n+1) = 1.01*a(n) - 880.87
%   a(0) = 80,000

% Initialize output array
N = 240; % number of months to simulate
a = zeros(1, N+1);
a(1) = 80000; % initial condition

% Apply difference equation iteratively
for n=1:N
    a(n+1) = 1.01*a(n) - 880.87;
end

% Plot the results
figure
plot(0:N, a, "-")
xlabel("Month")
ylabel("Balance ($)")
title("Loan Repayment Model")
