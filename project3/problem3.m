function y = problem3(x)
%  ProjectEuler Problem 3: Largest Prime Factor
% This function computes the largest prime factor of the 
% number 600851475143.
%
% Test 1:  The largest prime factor of 3916767508299776 is 457.
% Test 2: The largest prime factor of 321676755 is 5639.
% Test 3: The largest prime factor of 600851475143 is 6857.
    % 
    tic;
    %
    factorArray = factor(int64(x));
    y = max(factorArray);
    fprintf('The largest factor of %d is %d. \n \n', x, y);
    %
    toc;
    %
end

