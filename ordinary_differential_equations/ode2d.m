% Solve the following ODE system:
%	x'(t) = 0.5x-y
%	y'(t) = x
%	(x(0),y(0)) = (2,1)
%	0 <= t <= 10

% Define ODE as an inline equation
dxdt = @(t,x) [0.5*x(1) - x(2); x(1)];

% Define initial condition and time span
tspan = [0, 10];
x0 = [2, 1];

% Define solver options
opts = odeset("RelTol", 0.0001);

% Call ode45
[t, X] = ode45(dxdt, tspan, x0, opts);

% Plot results in phase plane
figure
plot(X(:,1), X(:,2), "b-")
xlabel("x")
ylabel("y")

% Plot results versus time
figure
plot(t, X(:,1), "b-", t, X(:,2), "r-")
xlabel("t")
legend("x", "y")
