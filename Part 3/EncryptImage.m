function cipher = EncryptImage(bwImage, key)
% encrypt an image using a key of a 2x2 patten array
% input:
%   - BW image to encrypt (2d uint8 array)
%   - 2d cell array containing a key of patternss
% output
%   - 2d cell array of 2x2 patterns acting as a cipher. each element is a
%     2x2 uint8 cell array
% author: Pradyun Setti

% quick func to tell if a number `n` is a dark pixel (ie < 128)
isDarkPixel = @(n) n < 128;

% gets dimensions of input image
[row, col] = size(bwImage);

for i = 1:row
   for j = 1:col
        % gets the current pixel and pixel from the respective arrays
        thisPixel = bwImage(i, j);
        thisPattern = key{i, j};
        
        % checks if the pixel is dark, and uses the image complement if
        % true
        if isDarkPixel(thisPixel)
            % need to use {} around the result to make sure its a cell
            cipher(i, j) = {ImageComplement(thisPattern)};
        else
            cipher(i, j) = {thisPattern};
        end
   end
end

end