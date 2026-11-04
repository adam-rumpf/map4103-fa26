% Solve the linear program:
% min	2x1 + 3x2 + 2x3
% s.t.	 x1 +  x2 +  x3 >= 3
%		2x1 +  x2       <= 4
%		 x1 +        x3  = 4
%			   x1,x2,x3 >= 0

% Define the LP's matrices and vectors
c = [2; 3; 2]; % cost vector
A = [-1 -1 -1; 2 1 0]; % inequality constraint matrix
b = [-3; 4]; % inequality requirement vector
Aeq = [1 0 1]; % equality constraint matrix
beq = [4]; % equality constraint vector
lb = [0; 0; 0]; % lower bound vector
ub = []; % upper bound vector (none)

% Solve the LP using linprog
[xopt, fval] = linprog(c, A, b, Aeq, beq, lb, ub);
disp("Optimal cost:")
disp(fval)
disp("Optimal solution:")
disp(xopt)

% Solve the problem as a maximization
[xopt, fval] = linprog(-c, A, b, Aeq, beq, lb, ub);
disp("Optimal cost:")
disp(-fval)
disp("Optimal solution:")
disp(xopt)
