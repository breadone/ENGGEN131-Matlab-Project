function patterns = CreatePatterns
% creates a cell array of patterns to be used in key generation
% no input
% outputs: 1x6 cell array of all possible patterns possible in a 2x2 b&w
% image
% Author: Pradyun Setti

    p1 = uint8([255 255; 0 0]);
    p2 = uint8([0 0; 255 255]);
    p3 = uint8([0 255; 0 255]);
    p4 = uint8([255 0; 255 0]);
    p5 = uint8([0 255; 255 0]);
    p6 = uint8([255 0; 0 255]);
    
    patterns = {p1, p2, p3, p4, p5, p6};

end