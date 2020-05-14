function problem40;
% ProjectEuler #40: An irrational decimal fraction called Champernowne's constant 
% is created by concatenating the positive integers: 0.123456789101112131415161718192021...
% If dn represents the nth digit of the fractional part, find the value of the following expression.
% d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000
%
    tic;
    %
    champernowneStr = '';           % Initialize Champernowne string output variable
    n = 1000000;                    % Set output string length
    ii = 1;  
    while strlength(champernowneStr) <= n
        appendNum = num2str(ii);
        champernowneStr  = strcat(champernowneStr , appendNum);  % Sequentially build string
        ii = ii + 1;                                             % representing the Champernowne 
    end                                                          % fraction until it's "n" digits long.
    %
    d1 = str2double( champernowneStr(1));                                                 % Get d1
    fprintf('The 1st digit of Champernowne''s constant is %d \n', d1);
    d10 = str2double( champernowneStr(10));                                            % Get d10
    fprintf('The 10th digit of Champernowne''s constant is %d \n', d10);
    d100 = str2double( champernowneStr(100));                                        % Get d100 ... etc.
    fprintf('The 100th digit of Champernowne''s constant is %d \n', d100);
    d1000 = str2double( champernowneStr(1000));
    fprintf('The 1,000th digit of Champernowne''s constant is %d \n', d1000);
    d10000 = str2double( champernowneStr(10000));
    fprintf('The 10,000th digit of Champernowne''s constant is %d \n', d10000);
    d100000 = str2double( champernowneStr(100000));
    fprintf('The 100,000th digit of Champernowne''s constant is %d \n', d100000);
    d1000000 = str2double(champernowneStr(1000000));
    fprintf('The 1,000,000th digit of Champernowne''s constant is %d \n', d1000000);
    %
    outputProduct = d1*d10*d100*d1000*d10000*d100000*d1000000;
    fprintf('The product of these digits is %d \n', outputProduct);  % Print the answer.
    %
    toc;
end

