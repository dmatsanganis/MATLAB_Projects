function [Rc] = Cauchy_Round(mu,c,n)

% This function generates random samples from the one-dimensional Cauchy 
% distribution which is given by the following probability density
% function:
%        
%                     1              1
%     f(x;mu,c) = ------- *  ------------------        [1]
%                 pi * c                  2
%                                 (x - mu)   
%                           1 + ----------
%                                     2 
%                                    c  
% -------------------------------------------------------------------------
% mu: is the location parameter of the probability density function
% c:  is the location parameter of the probability density function
% n:  is the number of random samples to be generated from the Cauchy 
%     distribution.
% -------------------------------------------------------------------------
% The key idea to generate random samples from the Cauchy distribution is
% to consider the associated cumulative distribution function which is
% given by:
%              x
%             /     1          dt             1             (x-mu)     1
% F(x;mu,c) = |   ---- * ---------------- = ----- * arctan -------- + --- [2]
%             /   pi*c   1 + ((x-mu)/c)^2    pi                c       2
%            -oo

% Given that the output y = F(x) of the cumulative distribution function is 
% restricted within the interval 0 <= F(x) <= 1, the inversion of F will 
% result in an x value within the interval -oo < x < +oo. Thus, x will be
% given by:
%       -1
% x = F   (y) = c * tan(pi*(y - 0.5)) + mu [3]

Ru = rand(1,n);

Rc = c * tan(pi*(Ru - 0.5)) + mu;

end
