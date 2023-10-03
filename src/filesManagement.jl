function read_file(file_name::String)
    #
    file = open(file_name, "r")
    lines = readlines(file)
    return lines
end