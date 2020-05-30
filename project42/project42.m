function numberTriangleWords = project42(triangleWordFile)
% projecteuler 42 - Coded Triangle Numbers
% This function reads a list of words from a file and converts each letter
% in each word to a number corresponding to its alphabetical position.  
% It adds these values to form a word value.  This function then
% determines whether this word value is a member of the triangle 
% number sequence given by tn = ½n(n+1).  This function
% returns the number word values which are found in the triangle 
% number sequence
%
tic;
%
numberTriangleWords = 0;
%
isTriangular = @(x) rem((sqrt(8*x + 1) - 1)/2, 1);
%
% Read words from file into an array
triStrings = string(1);
fid = fopen(triangleWordFile, 'r');
triStrings = string(fgetl(fid));
 while ~feof(fid)
     triStrings = [triStrings; fgetl(fid)];
 end % while
fclose(fid);
%
triChars = convertStringsToChars(triStrings);
%
for ii = 1:length(triChars)
    triNum = sum(double(triChars{ii}(1:end-1)) - 64);
    triTest = isTriangular(triNum);
    if triTest == 0
        numberTriangleWords = numberTriangleWords + 1;
    end % if
end % for
%
fprintf('The number of strings coded as triangular numbers is %d. \n \n', numberTriangleWords);
%
toc
%
end

