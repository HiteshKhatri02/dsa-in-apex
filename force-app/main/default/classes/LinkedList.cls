/**
 * A custom implementation of a singly linked list.
 */
public class LinkedList {
    
    // Inner class representing a node in the linked list
    public class ListNode {
        @TestVisible
        public Object data;
        @TestVisible
        public ListNode next;
        
        /**
         * Constructs a new ListNode with the given data.
         * @param data The data to be stored in the node.
         */
        ListNode(Object data) {
            this.data = data;
            this.next = null;
        }
    }
    
    @TestVisible
    private ListNode head;
    
    /**
     * Constructs a new empty linked list.
     */
    public LinkedList() {
        this.head = null;
    }
    
    /**
     * Inserts an element at the beginning of the linked list.
     * @param data The data to be inserted.
     */
    public void push(Object data) {
        ListNode newNode = new ListNode(data);
        newNode.next = head;
        head = newNode;
    }

    
    /**
     * Removes and returns the element at the beginning of the linked list.
     * @return The removed element.
     * @throws NullPointerException if the list is empty.
     */
    public Object pop(){
        if (head == null) {
            throw new NullPointerException();
        }
        Object removedData = head.data;
        head = head.next;
        return removedData;
    }
    
    /**
     * Deletes the first occurrence of the specified element from the linked list.
     * @param data The element to be deleted.
     * @return true if the element was found and deleted, false otherwise.
     */
    public boolean deleteData(Object data) {
        if (head == null) {
            return false;
        }
        
        if (head.data.equals(data)) {
            head = head.next;
            return true;
        }
        
        ListNode current = head;
        while (current.next != null) {
            if (current.next.data.equals(data)) {
                current.next = current.next.next;
                return true;
            }
            current = current.next;
        }
        
        return false;
    }
    
    /**
     * Checks if the linked list is empty.
     * @return true if the linked list is empty, false otherwise.
     */
    public boolean isEmpty() {
        return head == null;
    }

    /**
     * Inserts an element after a specified node in the linked list.
     * @param prev_node The node after which to insert the element.
     * @param data The data to be inserted.
     * @throws NullPointerException if prev_node is null.
     */
    public void insertAfter(ListNode prev_node, Object data) {
        if(prev_node == null){
            throw new NullPointerException();
        }

        ListNode newNode = new ListNode(data);
        newNode.next = prev_node.next;
        prev_node.next = newNode;
    }

    /**
     * Adds an element to the end of the linked list.
     * @param data The data to be added.
     */
    public void addToTail(Object data){
        ListNode newNode = new ListNode(data);
        if(head == null){
            head = newNode;
            return;
        }

        ListNode last = head;

        while(last.next != null ){
            last = last.next;
        }

        last.next = newNode;
        
    }

    /**
     * Removes and returns the element at the end of the linked list.
     * @return The removed element, or null if the list is empty.
     */
    public Object removeFromTail(){
        if (head == null){
             return null;
        }

        if (head.next == null){
            ListNode tempNode = head;
            head = null;
            return tempNode.data;
        }

        ListNode tempNode = head;
        ListNode prevNode = null;
   
        while(tempNode.next != null){
            prevNode = tempNode;
            tempNode = tempNode.next;
        }
        
        prevNode.next = null;
        return tempNode.data;
    }
    
    /**
     * Returns the number of elements in the linked list.
     * @return The number of elements in the linked list.
     */
    public Integer size(){
        if(head == null){
            return 0;
        }
        ListNode currentNode = head;
        Integer index = 1;
        while(currentNode.next != null){
            index++;
            currentNode = currentNode.next;
        }

        return index;
    }

    /**
     * Returns a string representation of the linked list.
     * @return A string representation of the linked list.
     */
    public override String toString() {
        String sb;
        ListNode current = head;
       
        while (current != null) {
            String cString = current.data + ' -> ';
            sb = String.isBlank(sb) ? cString :  sb + cString;
            current = current.next;
        }

        sb += 'null';
        return sb.toString();
    }

    /**
     * @description deleteNode delete node from specific position
     * @param  position position delete the node
     */
    public ListNode deleteNode(Integer position)
    {
        // If linked list is empty
        if (this.head == null)
            return null;
 
        // Store head node
        ListNode temp = this.head;
 
        // If head needs to be removed
        if (position == 0) {
            this.head = temp.next; // Change head
            return null;
        }
        // Find previous node of the node to be deleted
        
        for (Integer i = 0; temp != null && i < position - 1; i++)
            temp = temp.next;

        // If position is more than number of nodes
        if (temp == null || temp.next == null)
            return null;
 
        // Node temp->next is the node to be deleted
        // Store pointer to the next of node to be deleted
        ListNode next = temp.next.next;
        ListNode deletedNode = temp.next;
        temp.next = next; // Unlink the deleted node from list
        return deletedNode;
    }

    public ListNode get(Integer position){
        if(this.head == null) return null;        

        ListNode temp = this.head;
        ListNode currentNode;
        Integer i = 0;
        
        while(i <= position  && temp != null){
            currentNode = temp;
            if(i == position){ break; }
            temp = temp.next;
            i++;
        }
        
        if(position > i) {
            throw new ListException();
        }
       
       return currentNode;

    }
}