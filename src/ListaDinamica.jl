module ListaDinamica

include("filesManagement.jl")
include("presentList.jl")
include("minMax.jl")


function analysis_of_the_first_and_second_list(list:: Vector{Int32}, name_list::String)
    println("\n\n$name_list: $(show_list_in_one_line(list)) " )
    println("Large of the list: ", length(list))
    println("Greatest element of the list: ",max_value_of_the_list(list))
    println("Lowest elemnt of the list: ", min_value_of_the_list(list))
    println("Sum of all elements: ", sumatory(list))
    println("Inverted list: ", invert_list(list))
    println("Sort list: $(show_list_in_one_line(merge_sort(list)))")
end


#=function rest_and_join(first_list::Vector{Int32}, second_list::Vector{Int32})
    println("\n\nJoin: ")
    println("Sort join: ")
    println("Intersection: ")
    println("Sort intersection: ")
    println("Substraction: ")
    println("Sort substraction: ")
end=#


function main()
    first_list::Vector{Int32} = [10, 1, 5, 32, 0, -4, 8, 24]
    second_list::Vector{Int32} = [10, 1, 32, 24, 101, 82, -17, 57, 29, 6, 16, -5]
    analysis_of_the_first_and_second_list(first_list, "FIRST LIST")
    analysis_of_the_first_and_second_list(second_list, "SECOND LIST")
#     rest_and_join(first_list, second_list)
end

main()
end 

