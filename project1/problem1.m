function problem1(n)
%  ProjectEuler Problem 1: If one lists all the natural numbers below 10 which 
%  are multiples of 3 or 5, one gets 3, 5, 6 and 9. The sum of these multiples is 23.
%  This function computes the sum of all the multiples of 3 or 5 below 1000.
%
    tic; % Start timer.
    %
    sum35 = 0;                           % Initialize solution sum.
    for ii = 1:(n-1)                      % Test all numbers less than the input value.
        if mod(ii, 3) == 0             % Test whether the number is divisible by 3
            sum35 = sum35 + ii;  % and increment the sum if it is.
        elseif mod(ii, 5) == 0      % Test whether the number is divisible by 5
            sum35 = sum35 + ii;  % and increment the sum if it is.
        end
    end
    fprintf('The sum of the numbers less than %d which are multiples 3 and 5 is %d. \n \n', n, sum35);
    %
    toc; % Stop timer and print elapsed time.
end

