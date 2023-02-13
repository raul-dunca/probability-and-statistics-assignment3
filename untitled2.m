p=input('Enter p: ')

if p<0.05 || p>0.95
    fprintf("Error!!")
    return 
end

for n=0:2:100
    mu=n*p;
    sigma=sqrt(n*p*(1-p));
    plot(0:1:n,binopdf(0:1:n,n,p),0:1:n,normpdf(0:n,mu,sigma))
    pause(0.5)
end

