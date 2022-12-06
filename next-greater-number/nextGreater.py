def next_greater(num):
    """
    NUM: INT NUMBER
    """
    # We create a list named digits to store digits of num
    digits = list(str(num))

    # we create and initialize i to the before last index
    # (because the last element has no next element
    # so digits[i+1] doesn't exist)
    i = len(digits) - 2
    while i >= 0 and digits[i] >= digits[i+1]:
        i -= 1

    # if we find -1, then the next greater doesn't exist, we return num
    if i == -1:
        return num

    # we create and initialize j to the last index
    j = len(digits) - 1

    # we search for the first digit that is greater than digits[i]
    while digits[j] <= digits[i]:
        j -= 1

    # we swap digits[i] with digits[j]
    digits[i], digits[j] = digits[j], digits[i]

    # we reverse the part that starts from i+1
    digits[i+1:] = digits[:i:-1]

    # we return digits as an integer
    return int("".join(digits))


if __name__ == "__main__":

    num = 3401
    print(next_greater(num))
    assert next_greater(num) == 3410

    num = 3410
    print(next_greater(num))
    assert next_greater(num) == 4013

    num = 1318540
    print(next_greater(num))
    assert next_greater(num) == 1340158

    num = 4321
    print(next_greater(4321))
    assert next_greater(num) == 4321
