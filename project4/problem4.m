function  largestP = problem4(numDigits,inLimit)
% projecteuler - Largest palindrome product:  A palindromic number 
% reads the same both ways. For example, thelargest palindrome made from the 
% product of two 2-digit numbers is 9009 = 91 × 99.
% 
% This function returns the largest palindrome smaller than the inLimit input
% parameter which is the product of two numbers of length numDigits.
% If no such number exists the function returns 0.
%
% Test 1: problem4(3, 1000000) returns 906609
%
% Check for nonscalar or invalid inputs
%
tic;
%
if isscalar(numDigits) == 0
    largestP = 0;
    return;
elseif isscalar(inLimit) == 0
    largestP = 0;
    return;
elseif inLimit == 0
    largestP = 0;
    return;
elseif numDigits == 0
    largestP = 0;
    return;
end
%
% Build matrix containing the most significant products of dig*dig
%
prod_List = zeros(10^numDigits, 10^numDigits);
for ii = 10^(numDigits-1):10^numDigits
    for jj = 10^(numDigits-1):10^numDigits
        prod_List(ii,jj) = ii*jj;
    end
end
%
% Sort the prodList matrix in descending order;
% then compute a set of its unique elements in sorted order.
% 
unique_List = unique(prod_List);
[num_Candidates, ~] = size(unique_List);
%
% Scan down through the candidate list until a number smaller than lim is 
% found; starting with the first number found less than lim test whether it
% is a palindrome.  Return the first palindrome found that's less than lim.
%
for ii = num_Candidates:-1:1
    if unique_List(ii) < inLimit
        forward = num2str(unique_List(ii));
        backward = flip(forward);
        if forward == backward
            largestP = str2num(forward);
            fprintf('The largest palindrome less than %d made up of %d digit factors is %d. \n \n', inLimit, numDigits, largestP);
            %
            toc;
            %
            return
        else
            largestP = 0;
        end
    end
end
%
end