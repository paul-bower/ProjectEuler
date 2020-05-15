function project50(maxPrimeSize)
% projecteuler Problem 50: Consecutive Prime Sum - This function
% determines which prime less than the input primeBucketSize parameter
% can be written as the sum of the most consecutive primes.  This function
% outputs the maximum prime sum length and its corresponding 
% prime number.
%
% Test 1: for the set of primes less than 100 the maximum number of
% consecutive prime with sum equal to a prime in the set is six and its sum
% is 41.
% Test 2: for the set of primes less than 1000 the longest sum contains 21
% elements and is equal to 953.
%
    tic;  % Start timer
    %
    % Create an array of contiguous prime numbers less than or equal to the
    % input maxPrimeSize parameter
    % 
    numArray = 1:maxPrimeSize;
    primeTest = isprime(numArray);
    primeArray =numArray(primeTest);
    numPrimes = length(primeArray);
    %
    % Initialize array containing the max size of sums equal to array of primes
    lenPrimeSum = ones(1, length(primeArray));
    %
    % Sequentially compute the sums of consecutive primes in a window between length two 
    % and total number of primes minus one.  Test whether these sum are in
    % the list of primes and if found there update the length prime sums
    % array with the found length value.
    for ii = 2:(numPrimes-1)
        kB = ii - 1; % Starting window position relative to window length
        kF = 0;       % Ending window position relative to window length
        windowSum = movsum(primeArray, [kB kF]);
        testSum = ismember(windowSum, primeArray);
        % Determine updates to the lenPrimeArray based on the test results       
        for jj = ii:numPrimes
            if testSum(jj) == 1
                lenPrimeSum(jj) = ii;
            end
        end
    end
    %
    % Find maximum length of consecutive prime sum and its value and then print these results to the console.
    [M, I] = max(lenPrimeSum);
    kOutB = M - 1;
    kOutF = 0;
    outWindowSum = movsum(primeArray, [kOutB kOutF]);
    fprintf('The longest consecutive sum of primes equal to a prime less than %d is %d and its value is %d. \n \n', maxPrimeSize, M, outWindowSum(I));
    %
    toc;  % Print the execution time to the console
end

