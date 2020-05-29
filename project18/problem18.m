function problem18
% projecteuler 18 - Maximum Path Sum 1: Given an input triangular array
% compute the sum of the longest path through it.
%
% Test 1:  For an input matrix of [3 0 0 0; 7 4 0 0;  2 4 6 0;  8 5 9 3] the longest path sum is 23
%
tic; % Start elapsed time timer
%
inputM = readmatrix('euler18Data.csv');
[rr, cc] = size(inputM);
%
%  This solution iteratively starting with the bottom row and selects the
%  largest of two adjacent numbers by scanning a moving window across the
%  row.  This solution then adds element-by-element this maximum value
%  array with the row above it.  The solution repeats this process until
%  all rows are processed.   The answer is then the first element in row 1.
% 
for ii = rr:-1:2
    mm = movmax(inputM(ii,:), [0 1]);
    for jj = 1:cc
        inputM(ii-1,jj) = inputM(ii-1,jj) + mm(jj);
    end
end
%
fprintf('The sum of the longest path is %d. \n', inputM(1,1));
%
toc; % Stop the elapsed time timer
%
end
