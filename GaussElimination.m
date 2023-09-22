
n = input('Enter the size: ');                  % Enter the size of Matrix with n*n
A = zeros(n,n);                                 % define n*n Matrix A
b = zeros(n,1);                                 % define column vector b

for i = 1 : n
    for j = 1 : n
        A(i,j) = input('Enter the value:');     % Enter value for each entry in 'A'
    end
end
disp(A);
for i = 1 : n
    b(i) = input('Enter the value:');           % Enter value for each entry in 'b'
end
disp(b);

x = GaussElim(A,b);                             % call the function GaussElim
disp('The solution of x is ')
disp(x);                                        % Display the return value of column vactor 'x'



function x1 = GaussElim(A1,b1)
    x1= zeros(length(b1),1);    

    if length(A1) ~= length(b1)                     % Check if the size of 'b' match with Matrix A
        disp('No solution for this linear system equation!');
    else
        M = [A1 b1];                                % Combine A and b
        L = length(M);
        for j = 1:(L-2)
            for i = (j+1) : (L-1)
                coff = M(i,j)/M(j,j);                
                for k = j : L
                    M(i,k) = M(i,k) - coff*M(j,k);  % loop through to make some non-pivot entries to be 0
                end                                 % make M to be Upper-triangular matrix
            end
        end
        for i = (L-1):-1:1                          % loop through to solve the equition from last row to first row
            for j = i+1 : L-1                       % last row could directly get value for x
                x1(i) =M(i,j)/M(i,j-1);             % Use x1 to hold each value of x column and return
            end
        end    
    end
end

