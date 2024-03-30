function queuetime(customers, n)
    # if there arent any customers, we return 0.
    length(customers) == 0 && return 0
    
    # if there is 1 till, everyone has to use it, so just sum up customers
    n == 1 && return sum(customers)
    
    # if there are more tills than customers, the maximum customer time is the max time
    n >= length(customers) && return maximum(customers)

    # if there are more customers than tills, we will:
    # instantiate an array to store our data
    checkouts = zeros(n)
    
    # iterate over the customers array
    for customer in customers
        # get the index of the till with the lowest value and add the next customer time to that.
        checkouts[findmin(checkouts)[2]] += customer
    end
    
    # return the till with the maximum time.
    return findmax(checkouts) |> first
end
