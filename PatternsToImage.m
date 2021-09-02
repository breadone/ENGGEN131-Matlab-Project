function image = PatternsToImage(patterns)
    [row, col] = size(patterns);
    
    for i = 1:2:row
       for j = 1:2:col
           cell = patterns{i, j};
           image(i, j) = cell(1, 1);
           image(i+1, j) = cell(2, 1);
           image(i, j+1) = cell(1, 2);
           image(i+1, j+1) = cell(2, 2);
       end
    end
    
end