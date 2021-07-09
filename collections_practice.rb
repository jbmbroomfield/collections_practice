def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort.reverse
end

def sort_array_char_count(array)
    array.sort do |a, b|
        a.size <=> b.size
    end
end

def swap_elements(array)
    array[1], array[2] = array[2], array[1]
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker_string(string)
    if string.size < 3
        string
    else
        "#{string[0..1]}$#{string[3..-1]}"
    end
end

def kesha_maker(array)
    array.map do |element|
        kesha_maker_string(element)
    end
end

def find_a(array)
    array.filter do |element|
        element[0].downcase == "a"
    end
end

def sum_array(array)
    array.reduce(0) do |sum, num|
        sum + num
    end
end

def add_s(array)
    array.map.with_index do |element, index|
        index == 1 ? element : "#{element}s"
    end
end