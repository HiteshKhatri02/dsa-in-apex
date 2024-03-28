@isTest
public class LinkedListTest {

    @isTest
    static void testPushAndPop() {
        LinkedList clist = new LinkedList();
        clist.push(1);
        clist.push(2);
        clist.push(3);

        System.assertEquals(3, clist.pop());
        System.assertEquals(2, clist.pop());
        System.assertEquals(1, clist.pop());
        try {
            clist.pop();
            Assert.fail();
        } catch (Exception e) {
            System.debug('Error message : '+e.getMessage());
        }
    }

    @isTest
    static void testDeleteData() {
        LinkedList clist = new LinkedList();
        clist.push(1);
        clist.push(2);
        clist.push(3);

        System.assertEquals(true, clist.deleteData(2));
        System.assertEquals(3, clist.pop());
        System.assertEquals(1, clist.pop());

        System.assertEquals(false, clist.deleteData(2));
    }

    @isTest
    static void testIsEmpty() {
        LinkedList clist = new LinkedList();
        System.assertEquals(true, clist.isEmpty());

        clist.push(1);
        System.assertEquals(false, clist.isEmpty());

        clist.pop();
        System.assertEquals(true, clist.isEmpty());
    }

    @isTest
    static void testInsertAfter() {
        LinkedList clist = new LinkedList();
        clist.push(1);
        clist.push(2);
        LinkedList.ListNode node = clist.head.next;
        clist.insertAfter(node, 3);
        System.assertEquals(2, clist.pop());
        System.assertEquals(1, clist.pop());
        System.assertEquals(3, clist.pop());
    }

    @isTest
    static void testAddToTailAndRemoveFromTail() {
        LinkedList clist = new LinkedList();
        clist.addToTail(1);
        clist.addToTail(2);
        clist.addToTail(3);

        System.assertEquals(3, clist.removeFromTail());
        System.assertEquals(2, clist.removeFromTail());
        System.assertEquals(1, clist.removeFromTail());
        System.assertEquals(null, clist.removeFromTail());
    }

    @isTest
    static void testSize() {
        LinkedList clist = new LinkedList();
        System.assertEquals(0, clist.size());

        clist.push(1);
        clist.push(2);
        clist.push(3);
        System.assertEquals(3, clist.size());

        clist.pop();
        System.assertEquals(2, clist.size());
    }

    @isTest
    static void testToString() {
        LinkedList clist = new LinkedList();
        clist.push(1);
        clist.push(2);
        clist.push(3);
        
        System.assertEquals('3 -> 2 -> 1 -> null', clist.toString());
    }

    @isTest
    static void testDeletedNode() {
        LinkedList clist = new LinkedList();
        clist.push(1);
        clist.push(2);
        clist.push(3);
        
        LinkedList.ListNode tempNode = clist.deleteNode(1);
        System.assertEquals(2, tempNode.data);
    }
}