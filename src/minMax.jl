#=
minMax:
- Julia version: 
- Author: v_e_c
- Date: 2023-10-02
=#
function min_value_of_the_list(list::Vector{Int32})
    min = list[1]
    for value in list
        if min > value
            min = value
        end
    end
    return min
end


function max_value_of_the_list(list::Vector{Int32})
    max = list[1]
    for value in list
        if max < value
            max = value
        end
    end
    return max

end
