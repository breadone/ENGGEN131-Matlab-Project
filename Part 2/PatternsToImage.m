function image = PatternsToImage(patterns)
    % takes an array of pattern uints and turns them into one bigboi image
    % input: MxN array of 4x4 uint8 patterns
    % output: one uint8 array (image), of the patterns assembled
    % author: Pradyun Setti
    
    % gets size of array & inits count variables
    [row, col] = size(patterns);
    icount = 1;
    jcount = 1;
    
    for i = 1:row*2
        % only need to change every second row/col, so if its an even
        % row/col, ignore it
        if mod(i, 2) ~= 0
            for j = 1:col*2
                if mod(j, 2) ~= 0
                    % loads the cell into a variable
                    cell = patterns{icount, jcount};
                    % arranges each cell into the adjacent 3 cells
                    image(i, j) = cell(1, 1);
                    image(i, j+1) = cell(1, 2);
                    image(i+1, j) = cell(2, 1);
                    image(i+1, j+1) = cell(2, 2);
                    jcount = jcount + 1; 
                end
            end
            % updates helper count vars once a row/col has been completed
            icount = icount + 1;
            jcount = 1;
        end
    end
end