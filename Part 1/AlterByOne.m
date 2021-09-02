function newUInt = AlterByOne(oldUInt)
% returns a UINT value from one of two selections: if the value is 255,
% then it returns 254, else it returns the input value plus one
% input: a UInt8
% output: another UInt8
% Author: Pradyun Setti
    if oldUInt == 255; newUInt = 254; else; newUInt = oldUInt + 1;
end