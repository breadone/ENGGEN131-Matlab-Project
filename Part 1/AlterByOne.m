function newUInt = AlterByOne(oldUInt)
% returns a UINT value from one of two selections: if the value is 255,
% then it returns 254, else it returns the input value plus one
% input: a UInt8
% output: another UInt8
% Author: Pradyun Setti

    if oldUInt == 255 % IF ITS FUCKING 255
        newUInt = uint8(254); % FUCKING MAKE IT 254
    else % ELSE
        newUInt = uint8(oldUInt + 1); % MAKE IT THE FUCKING OLD ONE PLUS ONE
    end
end
