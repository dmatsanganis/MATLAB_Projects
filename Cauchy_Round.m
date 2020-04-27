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

Ru = rand(1,n);

Rc = c * tan(pi*(Ru - 0.5)) + mu;

end
