
n = input('Enter total number of points will be used? ');           % Enter the number of points we want to test
t = zeros(n);
N = zeros(n);                               % define a vector to hold n
AbsError = zeros(n);                        % define a vector for absolute error
for i = 1: n
    a = i*n;
    tic                                     % use tic - toc to hold times
    [P, A, R] = MontePi(a);                 % call function MontePi
    N(i) = i;
    
    t(n) = toc;
    AbsError(i) = A;
end

plot(N ,t);
xlabel('The number of random points ')      % x-axis label
ylabel('The resulting time')                % y-axis label
legend('x(t)-prey','y(t)-predator')

plot(N,AbsError);
xlabel('The number of random points ')      % x-axis label
ylabel('The absolute error')                % y-axis label
legend('x(t)-prey','y(t)-predator')

%{
 plot the color points 



%}


function [p, a, r] = MontePi(num)           % function MontePi
    c = 0;
    for i = 1:num
        x = rand(i,1);
        y = rand(i,1);
        
        radius = x(i,1)^2 + y(i,1)^2;
        if radius <= 1
            c = c + 1;
        end
    end
    
    p = c*4/num;
    a = abs(pi - p );
    r = a/pi;
end

