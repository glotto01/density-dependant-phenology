function  eqvsa_highadult(a0,a1,n)
tic
% scans through paramter a outputting csv file with row entries [a, eq1, eq2, eq3]
aa=linspace(a0,a1,n);
data=zeros(n,5);
for k=1:n
xmax=.9/max(.009,aa(k));
xx=linspace(0,xmax,200);
yy=arrayfun(@(x)oneseason(10,1,5,.1,aa(k),.5,x),xx);
eq=eqfinder(xx,yy);
%find the derivative at the upper equilbrium
if eq(3)~=0
    d=xmax/200;
    y0=interp1(xx,yy,eq(3)-d);
    y1=interp1(xx,yy,eq(3)+d);
    slope=(y1-y0)/(2*d);
else
    slope=1;
end
data(k,:)=[aa(k),[eq,slope]];
end
csvwrite('highadult.csv',data);
toc
end

