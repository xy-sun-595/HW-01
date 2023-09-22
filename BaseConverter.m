
prompt = "What is the Base n? ";        % Enter the value of base 'n' i.e. '5'
n = input(prompt); 

prompt2 = "Enter the value you want to convert? ";
A = num2str( (input(prompt2)));         % Enter the number base n   i.e. '123'



B = 0;
for i = 1:length(A)                     % Convert base n number to decimal
    B = B + str2num(A(i))*n^(length(A)-i);
end
% Start backwards to loop through each character for the units place, tens, hundreds and so on
% Multiple by n^0, n^1, n^2,...         (i.e. 3-->5^0 + 2-->5^1 + 1-->5^2)
% Sum them up to convert number from 'base n' to 'decimal'


prompt3 = "Enter the base you want to convert? ";
m = input(prompt3);                     % Enter the base we want to convert, 'm'   i.e. '3'

r = 0;
str = '';
while B >= m                        % Convert decimal number to base m
    r = rem(B,m);                       % Calculate a remainder first
    str = append(string(r),str);        % Collect the remainder in reverse order (start from "LSB')
    B = floor(B/m);                     % Keep dividing m to get new quotient B until B is less than m
end
str = append(string(B),str);            % After dividing m, collect B as 'MSB' 

disp(str);                              % Display the number in base n.              i.e. '1102'

