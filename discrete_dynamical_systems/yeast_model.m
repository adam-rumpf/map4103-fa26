% Numerically simulate a population model for yeast, and compare the
% results to the data series in the included CSV file.

% Initialize output array
N = 18; % number of iterations
p = zeros(1, N+1);
p(1) = 9.6; % initial condition

% Numerically solve model
for i=1:N
    p(i+1) = 1.56*p(i);
end

% Import data
T = readtable("yeast_data_extended.csv");

% Plot model and data
figure
plot(0:N, p, "bo-", T.time, T.biomass, "rx")
xlabel("Time (h)")
ylabel("Biomass (mg)")
lgd = legend("Model", "Data");
lgd.Location = "northwest";
title("Yeast Population Growth")
