function [Rc] = Cauchy_Round(mu,c,n)

Ru = rand(1,n);
% Generate the (n) uniform random samples that will be interpreted as the
% values of F.

Rc = c * tan(pi*(Ru - 0.5)) + mu;
% Generate the (n) random samples from the Cauchy distribution by using
% equation (3).

end
