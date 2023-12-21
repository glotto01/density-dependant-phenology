function [xx,yy]=highadult_diag(a,Pmax,n)
%makes plot of A1 vs. A0 for the case of high adult mortality rate
%   used to diagnose what value should be used for Amax and Amax/n
tic
alpha=10;
nu1=1;
nu2=5;
beta=0.1;
b=0.5;
xx=linspace(0,Pmax,n);
yy=arrayfun(@(x)oneseason(alpha,nu1,nu2,beta,a,b,x),xx);
plot(xx,yy,'-o',xx,xx);
toc
end

