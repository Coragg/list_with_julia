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


