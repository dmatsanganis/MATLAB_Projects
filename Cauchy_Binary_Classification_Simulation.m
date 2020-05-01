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


% This script file provides fundamental computational functionality for the
% simulation of binary classification problem within an one-dimensional 
% feature space. The class-conditional probability density functions for 
% the problem will be given by the parameterized Cauchy distribution as:
%   
%                     1              1
%     P(x;MU,C) = ------- *  ------------------        [1]
%                 pi * C                  2
%                                 (x - MU)   
%                           1 + ----------
%                                     2 
%                                    C  

% Assumming that scale parameters for the class-conditional probability 
% denstity functions are given by (C1) and (C2), and the corresponding  
% location parameters parameters (mean values) are given by (MU1) and (MU2)
% , we may write that:
%                      p(x|W1) = p(x;MU1,C1) and p(x|W2) = p(x;MU2,C2)    [2]

% The a-priori proababilities for the two classes W1 and W2 such that: 
% P(W1) = P and P(W2) = 1 - P. Thus, the condition for equiprobable classes
% translates to:
%               P(W1) = P(W2) ==> P = 0.5 [3]% This script file provides fundamental computational functionality for the
% simulation of binary classification problem within an one-dimensional 
% feature space. The class-conditional probability density functions for 
% the problem will be given by the parameterized Cauchy distribution as:
%   
%                     1              1
%     P(x;MU,C) = ------- *  ------------------        [1]
%                 pi * C                  2
%                                 (x - MU)   
%                           1 + ----------
%                                     2 
%                                    C  

% Assumming that scale parameters for the class-conditional probability 
% denstity functions are given by (C1) and (C2), and the corresponding  
% location parameters parameters (mean values) are given by (MU1) and (MU2)
% , we may write that:
%                      p(x|W1) = p(x;MU1,C1) and p(x|W2) = p(x;MU2,C2)    [2]

% The a-priori proababilities for the two classes W1 and W2 such that: 
% P(W1) = P and P(W2) = 1 - P. Thus, the condition for equiprobable classes
% translates to:
%               P(W1) = P(W2) ==> P = 0.5 [3]

