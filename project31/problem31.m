function combNumber = problem31
% projecteuler 31 - Coin Sum: This function
% returns the number of ways that a sum of 200p
% can be formed using any combination of the following 
% coins: 1p, 2p, 5p, 10p, 20p, 50p, 100p, and 200p.
% This function applies a dynamic programming algorithm.
%
tic;
%
coins = [1 2 5 10 20 50 100 200];
amount = 200;
combinations = zeros(1,amount+1);
%
combinations(1) = 1;
%
for ii = 1:length(coins)
    for jj = (coins(ii)+1):length(combinations)
        if jj >= coins(ii)
            combinations(jj) = combinations(jj) + combinations(jj - coins(ii));
        end % if
    end % for
end % for    
%
combNumber = combinations(end);
fprintf('The number of combinations of the given coins is %d. \n \n', combNumber);
%
toc
%
end

