function [tseries]=timeplot(alpha,nu1,nu2,beta,a,b,p0,n)
%make the time series
tseries=zeros(1,n+1);
tseries(1)=p0;
p=p0;
for k=1:n
    p=oneseason(alpha,nu1,nu2,beta,a,b,p);
    tseries(k+1)=p;
end
end

