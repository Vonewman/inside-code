#include <iostream>
using namespace std;

// Function to sort an array using insertion sort
void insertionSort(int arr[], int n)
{
    // Loop through the array, starting from the second element
    for (int i = 1; i < n; i++)
    {
        // Get the current element and store it in a temporary variable
        int temp = arr[i];

        // Initialize a counter j to the index of the previous element
        int j = i - 1;

        // Loop backwards through the array, while the element at j is greater
        // than the temporary variable, and while j is a valid index
        while (j >= 0 && arr[j] > temp)
        {
            // Shift the element at index j to the right by one position
            arr[j + 1] = arr[j];

            // Decrement j to move on to the next element
            j--;
        }

        // When the loop ends, we know that the element at index j is either
        // smaller than the temporary variable, or j is no longer a valid index.
        // In either case, we insert the temporary variable at index j + 1.
        arr[j + 1] = temp;
        
    }
}


// Function to print the elements of an array
void printArray(int arr[], int n)
{
    for (int i = 0; i < n; i++)
        cout << arr[i] << " ";
    cout << endl;
}

// Main function
int main()
{
    // Initialize an array of integers
    int arr[] = {5, 4, 3, 2, 1};
    int n = sizeof(arr) / sizeof(arr[0]);

    // Print the unsorted array
    cout << "Original array: ";
    printArray(arr, n);

    // Sort the array using insertion sort
    insertionSort(arr, n);

    // Print the sorted array
    cout << "Sorted array: ";
    printArray(arr, n);

    return 0;
}