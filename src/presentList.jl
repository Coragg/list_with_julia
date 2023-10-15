#=
presentList:
- Julia version: 
- Author: v_e_c
- Date: 2023-10-02
=#

function show_list_in_one_line(list_of_numbers::Vector)
    #= transform all of the numbers and the list  in a simple string with all numbers
    param list
    =#
   what_number_i_show = ""
   for number in list_of_numbers
        what_number_i_show *= string(number) * " "
   end
   return what_number_i_show
end


function invert_list(list::Vector{Int32})
    numbers = ""
    step = length(list)
    while step >= 1
        numbers *= string(list[step]) * " "
        step -= 1
    end
    return numbers
end




function merge_sort(list:: Vector{Int32})
    if length(list) <= 1
        return list
    end

    mid = div(length(list), 2)
    left = merge_sort(list[1:mid])
    right = merge_sort(list[mid + 1:end])

    return merge(left, right)
end

function merge(left, right)
    result = []
    i = 1
    j = 1

    while i <= length(left) && j <= length(right)
        if left[i] <= right[j]
            push!(result, left[i])
            i += 1
        else
            push!(result, right[j])
            j += 1
        end
    end

    while i <= length(left)
        push!(result, left[i])
        i += 1
    end

    while j <= length(right)
        push!(result, right[j])
        j += 1
    end

    return result
end





