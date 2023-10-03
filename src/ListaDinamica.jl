module ListaDinamica

include("filesManagement.jl")
include("minMax.jl")

show_list_in_one_line(list::Vector{Int32}) = for value in list
        print("$value ")
        end


function analysis_of_the_first_and_second_list(list:: Vector{Int32}, name_list::String)
    print("\n$name_list: " )
    show_list_in_one_line(list)
    println("\nLarge of the list: ", length(list))
    println("Greatest element of the list: ",max_value_of_the_list(list))
    println("Lowest elemnt of the list: ", min_value_of_the_list(list))
    println("Sum of all elements: ")
    println("Inverted list: ")
    println("Sort list: ")
end


function main()
    first_list::Vector{Int32} = [10, 1, 5, 32, 0, -4, 8, 24]
    second_list::Vector{Int32} = [10, 1, 32, 24, 101, 82, -17, 57, 29, 6, 16, -5]
    analysis_of_the_first_and_second_list(first_list, "FIRST LIST")
    analysis_of_the_first_and_second_list(second_list, "SECOND LIST")
end

main()
end 



