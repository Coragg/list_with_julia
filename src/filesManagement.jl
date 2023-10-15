function read_file(file_name::String)
    try
        file = open(file_name, "r")
        lines = readlines(file)
        close(file)
        return lines
    catch e
        println("Error al abrir el archivo: $e")
        return []
    end
end


function conversition_to_int(list::Vector)
    new_list::Vector{Int32} = []
    for element in list
        append!(new_list, parse(Int32, element))
    end
    return new_list
end

function get_data_file(input:: String)
    print("$input: ")
    name = readline()
    list = read_file("src/testingData/$name")
    return conversition_to_int(list)
end