#=
minMax:
- Julia version: 
- Author: v_e_c
- Date: 2023-10-02
=#
function min_value_of_the_list(list::Vector{Int32})
    min = list[1]
    for value in list[2:end]
        if min > value
            min = value
        end
    end
    return min
end


function max_value_of_the_list(list::Vector{Int32})
    max = list[1]
    for value in list[2:end]
        if max < value
            max = value
        end
    end
    return max
end


function sumatory(list::Vector{Int32})
    sum = 0
    for value_to_sum in list
        sum += value_to_sum
    end
    return sum
end



