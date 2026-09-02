% Define transition matrix
A = [0.6, 0.3;
     0.4, 0.7];

% Compute eigenvalues and eigenvectors of A
% V - matrix whose columns are eigenvectors
% D - diagonal matrix of eigenvalues
[V, D] = eig(A);

disp("First eigenvalue/eigenvector pair:")
disp(D(1,1))
disp(V(:,1))

disp("Second eigenvalue/eigenvector pair:")
disp(D(2,2))
disp(V(:,2))
