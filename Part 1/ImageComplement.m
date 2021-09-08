function complement = ImageComplement(image)
% function that returns the complement of a black and white image
% input: a black and white image
% output: the image that has been inverted
% Author: Pradyun Setti

%   gets the size of the image
    [rows, col, ~] = size(image);
    
    % loops through each row, column, and colour vec of image
    for i = 1:rows
        for j = 1:col
            % inverts the colour by taking the inverse
            complement(i, j) = 255 - image(i, j);
        end
    end
        
end