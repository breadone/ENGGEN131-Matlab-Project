function image = ImageComplement(image)
% function that returns the complement of a black and white image
% input: a black and white image
% output: the image that has been inverted
% Author: Pradyun Setti
%   gets the size of the image
    [rows, col, colour] = size(image);
    
    for i = 1:rows
        for j = 1:col
            for k = 1:colour
                image(i, j, k) = 255 - image(i, j, k);
            end
        end
    end
        
end