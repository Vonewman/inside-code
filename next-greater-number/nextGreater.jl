function nextGreater(num)
    """
    NUM: INT NUMBER
    """

    # We create a list names digits to store digits of num
    digits = 1:num

    # we create and initialize i to the before last index
    # because the last element has no next element
    # so digits[i+1] doesn't exist)
    i = length(digits) - 2
    while (i >= 0 && digits[i] >= digits[i+1])
        i -= 1
    end

    if i == -1
        return num
    end

    j = length(digits) - 1

    while (digits[j] <= digits[i])
        j -= 1
    end

    
end
