#=
presentList:
- Julia version: 
- Author: v_e_c
- Date: 2023-10-02
=#

function show_list_in_one_line(list_of_numbers::Vector{Int32})
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


function sort_list(list::Vector{Int32})
    l = length(list)
    swapped = true
    while swapped
        swapped = false
        for j = 2: l
            if list[j - 1] > list[j]
                tmp = list[j - 1]
                list[j - 1] = list[j]
                list[j] = tmp
                swapped = true
            end
        end
    end
end


