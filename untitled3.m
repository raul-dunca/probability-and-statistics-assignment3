p=input('Enter p: ')

if p>0.05
    fprintf("Error!!")
    return 
end
n=input('Enter n:')
if n<30
    fprintf("Error!!")
    return 
end

    delta=n*p;
    plot(0:1:n,binopdf(0:1:n,n,p),0:1:n,poisspdf(0:n,delta))
    


