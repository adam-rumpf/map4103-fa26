% Load data table
T = readtable("linear_data.csv");

% Call fitlm to fit a linear regression model
model = fitlm(T.x, T.y);
disp(model)

% Get parameters from model
beta = model.Coefficients.Estimate;
disp(beta)

% Compute predicted values
x = linspace(0, 210, 100);
y = beta(1) + beta(2)*x;

% Plot predictions versus data
figure
plot(x, y, "b-", T.x, T.y, "ro")
xlabel("x")
ylabel("y")
title("Linear Regression Demo")
lgd = legend("Model", "Data");
lgd.Location = "southeast";

% Alternative method using normal equations
m = length(T.x); % number of data points
X = ones(m, 2);
X(:,2) = T.x;
beta = (X'*X) \ (X'*T.y);
disp(beta)
