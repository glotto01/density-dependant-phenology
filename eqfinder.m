function equib= eqfinder(xx,yy)
%given x-list and y-list of growth function returns any non-zero equilb                                                                                                    
n=length(xx);
sgn=sign(yy-xx);
changepos=[];
for k=1:n-1
    if sgn(k)~=sgn(k+1)
        changepos=[changepos,k];
    end
end
L=length(changepos);
equib=[0,0,0];
for k=1:L
    t=changepos(k);
    m=(yy(t+1)-yy(t))/(xx(t+1)-xx(t));
    b=-m*xx(t)+yy(t);
    xeq=-b/(m-1);
    equib(k)=xeq;
end
end

