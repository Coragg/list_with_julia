#=
presentList:
- Julia version: 
- Author: v_e_c
- Date: 2023-10-02
=#
show_list_in_one_line(list::Vector{Int32}) = for value in list
        print("$value ")
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


function sort_list(arr::Vector{Int32})
    l = length(arr)
    swapped = true
    while swapped
        swapped = false
        for j = 2:l
            if arr[j-1] > arr[j]
                tmp = arr[j-1]
                arr[j-1] = arr[j]
                arr[j] = tmp
                swapped = true
            end
        end
    end
end

