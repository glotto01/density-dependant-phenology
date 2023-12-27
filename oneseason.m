function [p1]=oneseason(alpha,nu1,nu2,beta,a,b,p0)
%season to season map
%mean emergence time is Max(.15,a*P+b), variance is 0.1
sigma=.15;
theta=sigma^2/max(sigma,a*p0+b);
k=max(sigma,a*p0+b)^2/sigma^2;
g=@(x) x^(k-1)*theta^(-k)/gamma(k)*exp(-x/theta);
[~,y]=ode45(@(t,y) alpha*g(t)*exp(-nu1*t)*p0-nu2*y-beta*y^2,[0,1],0);
p1=y(end);
end

