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

// Expected Approach
// Intuition
// The key idea behind this approach is to recursively explore all possible choices of inserting zeros in the second array while maintaining the order of elements. Dynamic programming is used to avoid redundant calculations and optimize the solution by storing results of subproblems. By considering two cases at each step (including and excluding elements), the algorithm efficiently finds the maximum dot product.

// Implementation
// Nested Functions:
// product(p1, p2): This function calculates the dot product of two arrays starting from indices p1 and p2 of arrays A and B, respectively. It iterates through both arrays, multiplying corresponding elements and adding them to the sum.
// solve(p1, p2): This recursive function solves the main problem. It takes two pointers p1 and p2 indicating the current positions in arrays A and B, respectively.
// Base Cases:
// If either array is fully traversed (p1 == n and p2 == m), return 0.
// If one array is fully traversed (p1 == n), return negative infinity (float('-inf')).
// Dynamic Programming (DP):
// The function solve uses dynamic programming to store the results of subproblems in the dp dictionary. This is done to avoid recomputation of already solved subproblems.
// Recursive Cases:
// The function solve considers two cases:
// Case 1 (not_zero): Includes the current elements and moves to the next elements in both arrays (p1 + 1, p2 + 1).
// Case 2 (zero): Does not include the current element in array A and moves to the next element in array A (p1 + 1).
// Main Function:
// Calculate the difference in length between arrays A and B (diff = n - m).
// If both arrays have the same length (diff == 0), directly calculate the dot product using the product function.
// If the lengths are different, initialize a dp dictionary and call the solve function recursively to find the maximum dot product.
// Return:
// Return the maximum dot product (ans) calculated by the solve function.

// Complexity
// The time complexity of this approach is O(N×M) because it explores all possible combinations of inserting zeros in the second array while traversing both arrays simultaneously.

// The space complexity is alsoO(N×M) due to the dynamic programming table used to store results of subproblems
public with sharing class MaximizeDotProductwithDP {
    public MaximizeDotProductwithDP() {

    }
}