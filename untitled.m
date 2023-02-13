option=input('Choose a distributions(N/S/X/F)\n','s')
switch option
    case {'N'}
        mu=input('Enter the MU: ');
        sigma=input('Enter the Sigma: ');
        a0=normcdf(0,mu,sigma)                          %P(X<=0)=F(X=0)
        a1=1-a0 + normpdf(0,mu,sigma)                   %P(X>=0)=1-P(X<=0)+P(X=0)
        b1= normcdf(1,mu,sigma)-normcdf(-1,mu,sigma)    % P(−1 <= X <= 1)=P(X<=1)-P(X<=-1)
        b0=1-b1                                         %P(X <= -1 or X>= 1)=1-P(−1 <= X <= 1)
        al=input('Alpha: ');
        if al>=1 || al<=0
            fprintf("Error alpha need to be between 0 and 1!\n")
            return
        end
        c = norminv(al, mu, sigma);  %P(X < c) = al, c=? , al is known
        beta = input('Beta: ');
        if beta < 0 || beta > 1
            fprintf("Error beta need to be between 0 and 1!\n");
            return;
        end

        d = norminv(1 - beta, mu, sigma)    %P(X > d) = beta, d=? , beta is known
        
    case{'S'}
        n = input('Enter n: ');
        a0 = tcdf(0, n)
        a1 = 1 - a0
        b1 = tcdf(1, n) - tcdf(0, n)
        b0 = 1 - b1
        alpha = input('Alpha: ');
        if alpha < 0 || alpha > 1
            fprintf("Error alpha need to be between 0 and 1!\n")
            return;
        end
        c = tcdf(alpha, n)
        beta = input('Beta: ');
        if beta < 0 || beta > 1
            fprintf("Error beta need to be between 0 and 1!\n")
            return;
        end

        d = tcdf(1 - beta, n)
    case{'X'}
         n = input('Enter n: ');

        a0 = chi2cdf(0, n)
        a1 = 1 - a0

        b1 = chi2cdf(1, n) - chi2cdf(0, n)
        b0 = 1 - b1

        alpha = input('Alpha: ');
        if alpha < 0 || alpha > 1
            fprintf("Error alpha need to be between 0 and 1!\n")
            return;
        end

        c = chi2cdf(alpha, n)

        beta = input('Beta: ');
        if beta < 0 || beta > 1
            fprintf("Error beta need to be between 0 and 1!\n")
            return;
        end

        d = chi2cdf(1 - beta, n)

    case{'F'}
        m = input('Enter m: ');
        n = input('Enter n: ');

        a0 = fcdf(0, m, n)
        a1 = 1 - a0

        b0 = fcdf(1, m, n) - fcdf(0, m, n)
        b1 = 1 - b1

        alpha = input('Alpha: ');
        if alpha < 0 || alpha > 1
            fprintf("Error alpha need to be between 0 and 1!\n")
            return;
        end

        c = fcdf(alpha, m, n)

        beta = input('Beta: ');
        if beta < 0 || beta > 1
            fprintf("Error beta need to be between 0 and 1!\n")
            return;
        end

        d = fcdf(1 - beta, m, n)
    otherwise
        fprintf("Error!\n")
end