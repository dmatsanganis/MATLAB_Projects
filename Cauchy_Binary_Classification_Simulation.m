% Set the a-priori probabilities for the two classes by initializing 
% variable P.
P = 0.9;
% Define the location parameters mu1 and mu2.
MU1 = -2.0;
MU2 = 2.0;
% Define the scale parameter C1 and C2.
C1 = 1.0;
C2 = 1.0;

% Determine the intersection points of the two curves Pw1_x(x) and Pw2_x(x).
% To this end, we need to obtain the roots of the following equation with
% respect to x:
% G(x) = Pw1_x(x) - Pw2_x(x) = 0 <=>
% G(x) = P * Px_w1(x) - (1-P) * Px_w2(x) = 0 <=>
% G(x) = (P-1) * C2 * (x - MU1)^2 + P * C1 * (x - MU2)^2 + (P-1)*C1^2*C2 + P*C2^2*C1 = 0 [4]

% Define the necessary symbolic variables for computing the intesection
% points

syms mu1 mu2 p c1 c2 x
G = (p-1) * c2 * (x - mu1)^2 + p * c1 * (x - mu2)^2 + (p-1)*c1^2*c2 + p*c2^2*c1;
% Subsitite the symbolic variables appearing in the expression for G(x)
% with the contents of the corresponding numeric variables. The resulting
% symbolic variable will be denoting a function of the form Go(x).

Go = subs(G,[mu1 mu2 p c1 c2],[MU1 MU2 P C1 C2]);
% Perform numeric operations involving the coefficients of the symbolic 
% objects to simplify the expression for Go. The resulting Go variable will
% remain a symbolic object.

Go = vpa(Go);
