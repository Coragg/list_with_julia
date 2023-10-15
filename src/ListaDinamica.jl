module ListaDinamica

include("filesManagement.jl")
include("presentList.jl")
include("setsOfList.jl")
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


function rest_and_join(list1::Vector{Int32}, list2::Vector{Int32})
    println("\n\nUnion: $(show_list_in_one_line(set_union(list1, list2)))")
    println("Sort union: $(show_list_in_one_line(merge_sort(set_union(list1, list2))))")
    println("Intersection: $(set_intersection(list1, list2)) ")
    println("Sort intersection: $(set_intersection_sort(list1, list2))")
    println("Substraction: $(substraction(list1,list2)) ")
    println("Sort substraction: $(substraction_sort(list1,list2))")
end


function main()
    first_list::Vector{Int32} = get_data_file("Input the name of the first list")
    second_list::Vector{Int32} = get_data_file("Input the name of the second list")
    analysis_of_the_first_and_second_list(first_list, "FIRST LIST")
    analysis_of_the_first_and_second_list(second_list, "SECOND LIST")
    rest_and_join(first_list, second_list) 
end


main()

end 

