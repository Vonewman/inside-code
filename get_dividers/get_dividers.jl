function get_dividers(nb)

    dividers_list = []
    for d in 1:nb
        if nb % d == 0
            push!(dividers_list, d)
        end
    end
    return dividers_list
end


println(get_dividers(200))

            
