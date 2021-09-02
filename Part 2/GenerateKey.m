function key = GenerateKey(seed, patterns)
% generates key from input seed and custom patterns
% input: 
    [row, col] = size(seed);
    
    for i = 1:row
       for j = 1:col
           pattern = seed(i, j);
           key{i, j} = patterns{pattern};
       end
    end
end