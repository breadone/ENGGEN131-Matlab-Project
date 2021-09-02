function newUInt = AlterByOne(oldUInt)
    if oldUInt == 255
        newUInt = 254;
    elseif oldUInt < 255
        newUInt = oldUInt + 1;
    end
end