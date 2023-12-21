function bifurc_high(nthrow,nkeep)
tic
%generate csv file with bifurc values, uses a values from highadult.csv
M=csvread('highadult.csv');
M=transpose(M);
L=length(M(1,:));
data=zeros(L,nkeep+1);
%iterate over the a values
for ka=1:L
    %create data for the growth function
    a=M(1,ka);
    data(ka,1)=a;
    xmax=.9/max(.009,a);
xx=linspace(0,xmax,200);
yy=arrayfun(@(x)oneseason(10,1,5,.1,a,.5,x),xx);
g=@(x) interp1(xx,yy,x);
%iterate through the disposed values
p0=.5*(M(3,ka)+M(4,ka));
for k=1:nthrow
    p0=g(p0);
end
%record the values
for k=1:nkeep
    p0=g(p0);
    data(ka,k+1)=p0;
end
end
   csvwrite('highbifurc.csv',data); 
   toc
end

