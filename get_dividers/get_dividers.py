def get_dividers(nb):

    dividers_list = []
    for d in range(1, nb+1):
        if nb % d == 0:
            dividers_list.append(d)
    return dividers_list


if __name__ == "__main__":
    print(get_dividers(200))
