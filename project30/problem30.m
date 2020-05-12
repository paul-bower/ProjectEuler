function problem30(n)
%  ProjectEuler Problem 30:  To solve the ProjectEuler 30 problem
% this function computes the sum of all numbers which can be written
% as the sum of the "nth" power of their digits where n is the input
% variable.
%
tic                                % Start timer
%
outputSum = 0;       % Initialize output sum
maxNum = n*9^n;  % Compute maximum number to test
for ii = 2:maxNum
    numDigitList = str2num(num2str(ii)');   
    % Convert the number to test to column vector of characters and then 
    % convert this vector of characters to a vector of numbers.
    if ii == sum(numDigitList .^ n)          % Compute the sum of the numbers in the vector raised to the n power
        outputSum = outputSum + ii;      % and compare this sum to the tested number; add it to the output sum if true.
    end
end
%
fprintf('The sum of all numbers which can be written as the sum of the %dth power of their digits is %d. \n \n', n, outputSum);
%
toc                                % Stop timer and output elapsed execution time
%
end

