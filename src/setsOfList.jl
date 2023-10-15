#=
setsOfList:
- Julia version: 
- Author: v_e_c
- Date: 2023-10-15
=#
include("presentList.jl")

function set_union(list1::Vector, list2::Vector)
    union_set = union(list1, list2)
    return union_set
end


function intersection(set1::Vector{Int32}, set2::Vector{Int32})
    intersect = []
    for first in set1
        for second in set2
            if first == second
                append!(intersect, first)
            end
        end
    end
    return intersect
end


function set_intersection(set1::Vector{Int32}, set2::Vector{Int32})
    interset_list = intersect(set1, set2)
    return show_list_in_one_line(interset_list)
end


function set_intersection_sort(list1::Vector{Int32}, list2::Vector{Int32})
    interset_list = intersect(list1, list2)
    interset_list = merge_sort(interset_list)
    return show_list_in_one_line(interset_list)
end


function is_in_the_list(number::Int32, list::Vector{Int32})
    for element in list
        if element == number
            return true
        end
    end
    return false
end


function substraction(set1, set2)
    substraction_list = []
    for number in set1
        if is_in_the_list(number, set2) == false
            append!(substraction_list, number)
        end
    end
    return show_list_in_one_line(substraction_list)
end

function substraction_sort(set1, set2)
    substraction_list::Vector{Int32} = []
    for number in set1
        if is_in_the_list(number, set2) == false
            append!(substraction_list, number)
        end
    end
    return show_list_in_one_line(merge_sort(substraction_list))
end