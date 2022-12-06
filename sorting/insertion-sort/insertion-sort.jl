# Function to sort an array using insertion sort
function insertion_sort(arr)
    # Loop through the array, starting from the second element
    for i = 2:length(arr)
        # Get the current element and store it in a temporary variable
        temp = arr[i]

        # Initialize a counter j to the index of the previous element
        j = i - 1

        # Loop backwards through the array, while the element at j is greater
        # than the temporary variable, and while j is a valid index
        while j >= 1 && arr[j] > temp
            # Shift the element at index j to the right by one position
            arr[j + 1] = arr[j]

            # Decrement j to move on to the next element
            j -= 1
        end

        # When the loop ends, we know that the element at index j is either
        # smaller than the temporary variable, or j is no longer a valid index.
        # In either case, we insert the temporary variable at index j + 1.
        arr[j + 1] = temp
    end

    # Return the sorted array
    return arr
end

# Initialize an array of integers
arr = [5, 4, 3, 2, 1]

# Print the unsorted array
println("Original array: $(arr)")

# Sort the array using insertion sort
arr = insertion_sort(arr)

# Print the sorted array
println("Sorted array: $(arr)")

# In this example, the insertion_sort() function takes an array as input and returns the sorted array. It does this by looping through the array, starting from the second element, and inserting each element in its correct position in the subarray to its left. This is done by shifting the elements in the subarray to the right until the correct position is found, and then inserting the current element. The println() function is used to print the elements of the array, before and after it has been sorted.


