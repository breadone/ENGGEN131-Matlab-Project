function bwImage = ExtractImage(rgbImage)
% extracts a black and white image from a colour image, reversing
% EmbedImage()
% input:
%   - rgb image that contains a hidden bw image
% output:
%   - greyscale image that was hidden in the rgb image
% author: Pradyun Setti

% function to tell if the sum of `n` is odd or even
isEven = @(n) mod(sum(n), 2) == 0;

% gets dimensions of image
[row, col, ~] = size(rgbImage);

for i = 1:row
    for j = 1:col
       % if the sum of the pixels are even, assign 0 greyscale pixel, 255
       % if odd
       if isEven(rgbImage(i, j, 1:3))
           bwImage(i, j) = 0;
       else
           bwImage(i, j) = 255;
       end
    end
end


end