
n = input('Enter total number of points will be used? ');               % Enter the number of points we want to test 
[P, A, R] = MontePi(n);                                                 % Call the function MontePi and return P,A,R
disp(P);                                                                % Display the value for approximating pi
disp(A);                                                                % Display the absolute error
disp(R);                                                                % Display the relative error
function [p, a, r] = MontePi(num)
    c = 0;
    for i = 1:num 
        x = rand(i,1);                                              % find random x value between 0 to 1
        y = rand(i,1);                                              % find random y value between 0 to 1

        radius = x(i,1)^2 + y(i,1)^2;
        if radius <= 1                                              % check if (x,y) inside of the circle with radius 1
            c = c + 1;                                              % count the # of points inside of circle
        end
    
    end
    disp(c);
    p = c*4/num;                                                    % approximating pi: p
    a = abs(pi - p );                                               % absolute error: a
    r = a/pi;                                                       % relative error: r
end
