module ListaDinamica

include("filesManagement.jl")


function analysis_of_the_first_and_second_list(list:: Vector{Int32})
    println("Large of the list: ", length(list))
    println("Greatest element of the list:  ")
    println("Lowest elemnt of the list: ")
    println(" ")

end


function main()
    first_list::Vector{Int32} = [10, 1, 5, 32, 0, -4, 8, 24]
    second_list::Vector{Int32} = [10, 1, 32, 24, 101, 82, -17, 57, 29, 6, 16, -5]
    analysis_of_the_first_and_second_list(second_list)
end

main()
end 
