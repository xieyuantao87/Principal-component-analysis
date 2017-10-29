function [U, S] = pca(X)
%PCA Run principal component analysis on the dataset X
%   [U, S] = pca(X) computes eigenvectors of the covariance matrix of X
%   Returns the eigenvectors U, the eigenvalues (on diagonal) in S
%


[m, n] = size(X);


U = zeros(n);
S = zeros(n);


Sigma = 1.0/m .* X' * X;

%decompose Sigma to eignevectors U , and eigenvalues S.

[U, S, V] = svd(Sigma);


end
