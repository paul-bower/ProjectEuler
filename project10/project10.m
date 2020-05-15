function project10(primeLimit)
% projecteuler 10: Summation of prime - This function
% computes the sum of prime less than in input parameter
    tic;  % Start elapsed timer
    %
    primeSum = int64(0);  % Initialize prime sum parameter
    %
    for ii = 1:(primeLimit-1)
        if isprime(ii) == 1                         % For each natural number less than 
            primeSum = primeSum + ii; % the input limit value add it to the prime 
        end                                                 % sum if it tests prime
    end
    %
    % Output sum of primes
    fprintf('The sum of primes less than %d is %d. \n \n', primeLimit, primeSum);
    %
    toc;  % Output elapsed execution time
end