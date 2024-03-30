module Dir
    export dir_reduc

    function dir_reduc(ary)
        i = 1;
        while i <= length(ary)
            if i >= length(ary)
                break
            end
            if i < length(ary) && (((ary[i] == "NORTH" && ary[i+1] == "SOUTH") || (ary[i] == "SOUTH" && ary[i+1] == "NORTH")) || ((ary[i] == "EAST" && ary[i+1] == "WEST") || (ary[i] == "WEST" && ary[i+1] == "EAST")))  
                ary = vcat(ary[1:i-1], ary[i+2:end])
                i = 1
            else
                i += 1
            end
        end
    return ary
    end

end
