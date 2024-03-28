@isTest
public class StackTest {

    @isTest
    static void testPush() {
        Stack stack = new Stack();
        stack.push(5);
        Integer sizeAfterPush = stack.size();
        System.assertEquals(1, sizeAfterPush, 'Stack size should be 1 after push');
    }

    @isTest
    static void testPushAll() {
        Stack stack = new Stack();
        List<Object> objects = new List<Object>{1, 2, 3};
        stack.pushAll(objects);
        Integer sizeAfterPushAll = stack.size();
        System.assertEquals(3, sizeAfterPushAll, 'Stack size should be 3 after pushAll');
    }

    @isTest
    static void testPop() {
        Stack stack = new Stack();
        stack.push(5);
        Object poppedItem = stack.pop();
        Integer sizeAfterPop = stack.size();
        System.assertEquals(0, sizeAfterPop, 'Stack size should be 0 after pop');
        System.assertEquals(5, poppedItem, 'Popped item should be 5');
    }

    @isTest
    static void testPopEmptyStack() {
        Stack stack = new Stack();
        // Expecting StackUnderflowException when popping from an empty stack
        try {
            stack.pop();
            Assert.fail('StackUnderflowException');
        } catch (Exception e) {
            System.debug('Error message : '+e.getMessage());
        }
        
        
    }

    @isTest
    static void testPeek() {
        Stack stack = new Stack();
        stack.push(5);
        Object peekedItem = stack.peek();
        Integer sizeAfterPeek = stack.size();
        System.assertEquals(1, sizeAfterPeek, 'Stack size should remain unchanged after peek');
        System.assertEquals(5, peekedItem, 'Peeked item should be 5');
    }

    @isTest
    static void testPeekEmptyStack() {
        Stack stack = new Stack();
        // Expecting StackUnderflowException when peeking an empty stack
        try {
            stack.peek();
            Assert.fail('StackUnderflowException');
        } catch (Exception e) {
            System.debug('Error message : '+e.getMessage());
        }
        
    }

    @isTest
    static void testIsEmpty() {
        Stack stack = new Stack();
        Boolean empty = stack.isEmpty();
        System.assertEquals(true, empty, 'Stack should be empty');
    }

    @isTest
    static void testClear() {
        Stack stack = new Stack();
        stack.push(5);
        stack.clear();
        Integer sizeAfterClear = stack.size();
        System.assertEquals(0, sizeAfterClear, 'Stack size should be 0 after clear');
    }
}
