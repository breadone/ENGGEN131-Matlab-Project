function patterns = ImageToPatterns(bwImage)
% converts an image of BW sqaures to a cell array of 2x2 patterns
% input:
%   - BW image 
% output:
%   - cell array of 2x2 patterns extracted from the image
% author: Pradyun Setti

% counter vars for keeping track of how many patterns there are so far
pCounter = 1;

% init patterns array
patterns = {};

% helper func, takes number and returns a logical 1 if its odd, logical 0
% if even
isOdd = @(n) mod(n, 2) ~= 0;

% get dimensions of bwimage
[rows, col] = size(bwImage);

for i = 1:rows
    if isOdd(i)
        for j = 1:col
            if isOdd(j)
                % in here we know it's a odd row/col tile, so can take this
                % tile and the 3 adjacent tiles and put em into one pattern
                pattern(1, 1) = bwImage(i, j);
                pattern(2, 1) = bwImage(i+1, j);
                pattern(1, 2) = bwImage(i, j+1);
                pattern(2, 2) = bwImage(i+1, j+1);
                patterns{pCounter} = pattern;
                pCounter = pCounter + 1;
            end
        end
    end
end



end