function decryptedImage = DecryptImage(cipherImage, keyImage)
% decrypts a cipher image using the key image
% input:
%   - bw image containing a black and white cipher image
%   - bw image containing a black and white key image
% output:
%   - bw image containing the decrypted image
% author: Pradyun Setti

% get dimension of image
[row, col] = size(cipherImage);

% funcs that return a value of logical 1 if either/both of its inputs, a or b,
% are equal to 0
oneBlack = @(a, b) a == 0 || b == 0;
bothBlack = @(a, b) a == 0 && b == 0;

for i = 1:row
   for j = 1:col
      % sets the current pixel in the key and cipher images to their own
      % variables
      cipherPixel = cipherImage(i, j); 
      keyPixel = keyImage(i, j);

        if bothBlack(cipherPixel, keyPixel)
            % need to have bothBlack at the start so we know that both are
            % black, since oneBlack(a, b) would also give true if both are
            % black
            decryptedImage(i, j) = 255; % if both pixels are black, set white
        elseif oneBlack(cipherPixel, keyPixel)
            decryptedImage(i, j) = 0; % if either pixel is black, set black
        else
            decryptedImage(i, j) = 255; % if neither are black set white
        end
      
   end
end


end