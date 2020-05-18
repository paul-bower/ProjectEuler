function project17
% projecteuler 17 - Number letter counts: This function computes the 
% number of letters contained in a string of characters made up of concatenated
% numbers from 1 to 1000.  Spaces and hyphens are not counted.  The use of "and" 
% when writing out numbers is in compliance with British usage.
%
% Test 1: If the numbers 1 to 5 are written out in words: one, two, three, four, five, then 
% there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
% Test 2: 342 (three hundred and forty-two) contains 23 letters.
% Test 3: 115 (one hundred and fifteen) contains 20 letters.
%
 tic; % Execution time timer
 %
% Define a set of cell arrays which contain text strings which will be
% equated to parts of the input number
onesWord = {'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'};
teensWord = {'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'};
tensWord = {'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'};
hundredsWord = {'hundred'};
%
% Initialize concatenated string length parameter
totalStringLength = 0;
%
for testNumber = 1:1000
    switch true
        case testNumber < 1000
            onesIndex = mod(testNumber, 10);
            %
            if (onesIndex ~= 0) && (floor(mod(testNumber, 100)/10) == 1)
                tensIndex = 0;
            else
                tensIndex = floor(mod(testNumber, 100)/10);
            end % if tensIndex
            %
             if floor(mod(testNumber, 100)/10) == 1
                teensIndex = mod(mod(testNumber, 20), 10);
                onesIndex = 0;
            else
                teensIndex = 0;   
            end % if teensIndex
            %
            hundredsIndex = floor(testNumber/100);
            %
            %
            if onesIndex == 0
                onesText = '';
            else
                onesText = onesWord{onesIndex};
            end % if onesIndex
            %
            if tensIndex == 0
                tensText = '';
            else
                tensText = tensWord{tensIndex};
            end % if tensIndex
            %
            if teensIndex == 0
                teensText ='';
            else
                teensText = teensWord{teensIndex};
            end % if teensIndex
            %
            if hundredsIndex == 0
                hundredsText = '';
            elseif (hundredsIndex ~= 0) && (onesIndex == 0) && (tensIndex == 0) && (teensIndex == 0)
                hundredsText = strcat(onesWord{hundredsIndex},'hundred');
            else
                hundredsText = strcat(onesWord{hundredsIndex},'hundredand');
            end % if hundredsIndex
            %
            outString = strcat(hundredsText, teensText, tensText, onesText);
            textLength = strlength(outString);
            totalStringLength = totalStringLength + textLength;
           %
        otherwise
            outString = 'onethousand';
            textLength = strlength(outString);
            totalStringLength = totalStringLength + textLength;
            %
    end % switch-case                 
end % for loop
%
fprintf('The total number of characters contained in the concatented text of numbers between 1 and 1000 is %d. \n', totalStringLength);
%
 toc;
end