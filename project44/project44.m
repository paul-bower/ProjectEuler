function [jjMatch, kkMatch, PkPjDiff] = project44(maxNum)
% projecteuler44: Pentagon Numbers - This function finds 
% pair of pentagonal numbers, Pj and Pk, for which their 
% sum and difference are pentagonal and D = |Pk − Pj| is minimized
%
tic;
%
pentNum = @(x) (3*x .^2 - x)/2;
isPentagonal = @(x) (sqrt(24*x+1) + 1)/6;
%
for jj = 1:maxNum
    for kk = 1:maxNum
        sumPent = pentNum(jj) + pentNum(kk);
        diffPent = pentNum(jj) - pentNum(kk);
        if diffPent >= 0
            if rem(isPentagonal(sumPent), 1) == 0 &&  rem(isPentagonal(diffPent),1) == 0
                jjMatch = jj;
                kkMatch = kk;
                PkPjDiff = abs(pentNum(jj) - pentNum(kk));
                fprintf('The minimum absolute difference between matching pentagonal sum and difference number is  %d \n', PkPjDiff)
                fprintf('This result occurred for the %d and %d pentagon number indexes. \n', jjMatch, kkMatch);
                %
                toc;
                %
                return;
            end % if
        end % if
    end % for
end % for    
%
fprintf('No matches found\n');
%
toc;
%
end