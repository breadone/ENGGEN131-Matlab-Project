function rgbImage = EmbedImage(bwImage, rgbImage)
% embeds a black and white image into a colour image
% input:
%   - BW img as a 2D uint8 array
%   - RGB img as a 3D uint8 array
% output:
%   - RGB img that contains a hidden greyscale img
% author: Pradyun Setti

% helper func to determine if a number (or sum of array of nums) is even
evenSum = @(n) mod(sum(n), 2) == 0;
[rows, col, ~] = size(bwImage);

% loops through BW image pixel by pixel
for i = 1:rows
   for j = 1:col
        % check if each BW pixel is black
        if bwImage(i, j) == 0
           % if the sum of rgb values is odd, alter red
           if ~evenSum( rgbImage(i, j, 1:3) ) 
               rgbImage(i, j, 1) = AlterByOne(rgbImage(i, j, 1));
           end
        % check if each BW pixel is white
        elseif bwImage(i, j) == 255
            % if the sum of rgb values is even, alter red
            if evenSum( rgbImage(i, j, 1:3) ) 
               rgbImage(i, j, 1) = AlterByOne(rgbImage(i, j, 1));
           end
        end
        
   end
end
end