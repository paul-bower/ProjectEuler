function y = euler004(x)
%
% Build matrix containing a set of the largest products of x
%
reducedDim = ceil(x/10);
prodList = zeros(reducedDim);
for ii = 1:reducedDim
    for jj = 1:reducedDim
        prodList(ii,jj) = (x - ii + 1)*(x - jj + 1);
    end
end
%
% Sort the x-By-x prodList matrix in descending order;
% then find a set of unique elements.
% 
uniqueList = unique(prodList);
[numCandidates, ~] = size(uniqueList);
%
% Starting with the largest number in the candidate list test whether is is
% a palindrome.  Return the first palindrome found; otherwise, return zero.
%
y = 0;
ii = numCandidates;
while (ii > 0)
    forward = num2str(uniqueList(ii));
    backward = flip(forward);
    if forward == backward
        y = str2num(forward);
        ii = 0;
    else
        ii = ii - 1;
    end
end
%
end