function key = GenerateKey(radInts, patterns)
% generates key from input size and patterns, and assembles a key from
% those
% input: - m x n array of random integer values between 1 and 6 inclusive
%        - A 1x6 1D cell array containing 6 patterns 
% output: A 2D m x n cell array containing patterns to act as a key
% author: Pradyun Setti

    % gets size of input random integer array
    [row, col] = size(radInts);
    
    for i = 1:row
       for j = 1:col
           % gets pattern from random number index & assigns it to key cell
           % array
           pattern = radInts(i, j);
           key{i, j} = patterns{pattern};
       end
    end
end