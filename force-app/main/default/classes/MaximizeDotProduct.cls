// Given two arrays a and b of positive integers of size n and m where n >= m, 
// the task is to maximize the dot product by inserting zeros in the second array 
// but you cannot disturb the order of elements.

// Dot product of array a and b of size n is a[0]*b[0] + a[1]*b[1] + ... + a[n-1]*b[n-1].
// Example 1:

// Input: 
// n = 5, a[] = {2, 3, 1, 7, 8} 
// m = 3, b[] = {3, 6, 7}
// Output: 
// 107
// Explanation: 
// We get maximum dot product after inserting 0 at first and third positions in second array.
// Therefore b becomes {0, 3, 0, 6, 7}. 
// Maximum dot product = 2*0 + 3*3 + 1*0 + 7*6 + 8*7 = 107.
// Example 2:

// Input: 
// n = 3, a[] = {1, 2, 3}
// m = 1, b[] = {4} 
// Output: 
// 12 
// Explanation: 
// We get maximum dot product after inserting 0 at first and second positions in second array.
// Therefore b becomes {0, 0, 4}. 
// Maximum Dot Product = 1*0 + 2*0 + 3*4 = 12.
// Your Task:  
// You don't need to read input or print anything. Complete the function maxDotProduct() which takes n, m, array a and b as input parameters and returns the maximum value.

// Expected Time Complexity: O(n*m)
// Expected Auxiliary Space: O(n*m)

// Constraints:
// 1 ≤ m ≤n ≤ 103
// 1 ≤ a[i], b[i] ≤ 103

//************************************************ Solution Approaches */
// Brute force Approach
// Intuition
// The key idea behind this approach is to recursively explore all possible combinations of elements from arrays A and B while maximizing the dot product. At each step, we have two choices: either include the current element from array A and move to the next element in both arrays, or exclude the current element from array A and move to the next element in array A. We maximize the dot product by choosing the option that yields the highest result at each step.

// Implementation
// Base Case: If i exceeds the size of array A, return 0.
// Initialization: Initialize ans to the minimum integer value.
// Check if Zeros Can be Inserted: If count is nonzero, recursively call solve by inserting zero in array B. Update ans with the maximum value between the current ans and the product of A[i] and 0 plus the result of the recursive call.
// Check if Array B is Exhausted: If j is less than m, meaning array B has elements remaining, recursively call solve with the current elements from arrays A and B. Update ans with the maximum value between the current ans and the product of A[i] and B[j] plus the result of the recursive call.
// Return the Result: Return ans, which stores the maximum dot product.
// Call the Recursive Function: In the maxDotProduct function, call solve with initial values of i, j, and count.
// Return the Result: Return the result obtained from the solve function.

// Complexity
// The time complexity of the provided approach is exponential, specifically O(2^(n-m)), where n is the size of array A and m is the size of array B. This is because the function solve explores all possible combinations of inserting zeros into array B.

// The space complexity is O(n), where n is the size of array A. This is due to the recursive calls and the memory required for the call stack

public class MaximizeDotProduct {
    public Integer solve(Integer i, Integer j, Integer count, Integer[] A, Integer[] B, Integer n, Integer m) {
       
        if (i >= n) { return 0; }

        Integer ans = NumberConstants.MIN_INTEGER_VALUE;
       
        if (count > 0) {
            Integer s = solve(i+1, j, count-1, A, B, n, m);
            ans = Math.max(ans, A[i]*0 +  s); 
        }
        
        if (j < m) {
            Integer s = solve(i+1, j+1, count, A, B, n, m);
            ans = System.Math.max(ans, A[i]*B[j] + s);
        }
       
        return ans;
    }
    
    public Integer maxDotProduct(Integer n, Integer m, Integer[] A, Integer[] B) {
        return solve(0, 0, n-m, A, B, n, m);
    }
}