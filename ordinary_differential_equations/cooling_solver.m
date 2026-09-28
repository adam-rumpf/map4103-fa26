% Solve an ODE model based on Newton's Law of Cooling
%	T'(t) = 0.045 (10 + 0.25t - T(t))
%	T(0) = 90
%	0 <= t <= 120

% Define the ODE as an inline function
dTdt = @(t,T) 0.045*((10 + 0.25*t) - T);

% Define the initial condition
T0 = 90;

% Define the time interval
times = [0, 120];

% Solve using ode45
[t, T] = ode45(dTdt, times, T0);

% Plot the solution
plot(t, T, "-r")
xlabel("Time (min)")
ylabel("Temperature (deg C)")
title("Temperature Model")
