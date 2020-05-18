function project20
% projecteuler - Factorial Digit Sum: This function computes the sum 
% of the digits in the number 100!
%
    tic; % Start execution time timer
    %
    % Use MATLAB's symbolic math capability for handling very large numbers
    syms n;
    % Define n! function
    nFactorial = factorial(n);
    % Substitute 100 into factorial(n) and convert the resulting 100! number to a string
    sFactorial = char(subs(nFactorial, n, 100));
    %
    % Compute the sum of the digits in the 100! string
    sumDigits = 0;
    for ii = 1:1:length(sFactorial)
        sumDigits = sumDigits + str2num(sFactorial(ii));
    end
    %
    % Print the result
    fprintf('The sum of the digits in 100! is %d \n \n', sumDigits);
    %
    toc; % Stop the elapsed time timer and print the results
end
