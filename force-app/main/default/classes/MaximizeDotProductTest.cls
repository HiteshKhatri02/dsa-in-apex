@isTest
public class MaximizeDotProductTest {

    @isTest
    public static void testMaxDotProduct() {
        MaximizeDotProduct maximizeDotProduct = new MaximizeDotProduct();
        Integer[] A = new Integer[]{1, 3, 5};
        Integer[] B = new Integer[]{2, 4};
        Integer n = A.size();
        Integer m = B.size();
        Integer expected = 26; // Expected result for the given arrays A and B
        Integer result = maximizeDotProduct.maxDotProduct(n, m, A, B);
        Assert.areEqual(expected, result, 'Expected is not equals to the Actual.');
    }
}