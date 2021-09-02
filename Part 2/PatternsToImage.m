function image = PatternsToImage(patterns)
    [row, col] = size(patterns);
    icount = 1;
    jcount = 1;
%     for i = 1:row*2
%        if mod(i, 2) ~= 0; icount = icount+1; end
%        for j = 1:col*2
%            if (mod(i, 2) ~= 0) && (mod(j, 2) ~= 0)
%                cell = patterns{icount, jcount};
%                image(i, j) = cell(1, 1);
%                image(i+1, j) = cell(2, 1);
%                image(i, j+1) = cell(1, 2);
%                image(i+1, j+1) = cell(2, 2);
%                jcount = jcount + 1;
%            end
%        end
%     end 


    for i = 1:row*2
        if mod(i, 2) ~= 0
            for j = 1:col*2
                if mod(j, 2) ~= 0
                    cell = patterns{icount, jcount};
                    image(i, j) = cell(1, 1);
                    image(i, j+1) = cell(1, 2);
                    image(i+1, j) = cell(2, 1);
                    image(i+1, j+1) = cell(2, 2);
                    jcount = jcount + 1;
                end
            end
            icount = icount + 1;
            jcount = 1;
        end
    end
end