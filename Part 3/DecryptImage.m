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

% helper funcs, takes in an int and returns true if its == 0
% isBlack = @(n) n == 0;

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
      
%       if isBlack(cipherPixel)
%           if isBlack(keyPixel)
%               decryptedImage(i, j) = 255;
%           else
%               decryptedImage(i, j) = 0;
%           end
%       else
%           if isBlack(keyPixel)
%               decryptedImage(i, j) = 0;
%           else
%               decryptedImage(i, j) = 255;
%           end
%       end

        if bothBlack(cipherPixel, keyPixel)
            decryptedImage(i, j) = 255;
        elseif oneBlack(cipherPixel, keyPixel)
            decryptedImage(i, j) = 0;
        else
            decryptedImage(i, j) = 255;
        end
      
   end
end


end