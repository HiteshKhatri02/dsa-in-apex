/**
 * Represents a stack data structure.
 * <p>
 * A stack is a collection of items that follows the last-in-first-out (LIFO) principle.
 * Items can be pushed onto the stack, popped from the stack, peeked at the top item,
 * and the stack's size can be determined. The stack can also be cleared.
 * </p>
 */
public class Stack {
    
    private List<Object> items {get; set;}
    
    /**
     * Constructs a new empty stack.
     */
    public Stack(){
        this.items = new List<Object>();
    }
    
    /**
     * Pushes an item onto the top of the stack.
     * 
     * @param obj The item to be pushed onto the stack.
     */
    public void push(Object obj) {
        this.items.add(obj);
    }

    /**
     * Pushes a list of items onto the top of the stack.
     * 
     * @param objs The list of items to be pushed onto the stack.
     */
    public void pushAll(List<Object> objs) {
        this.items.addAll(objs);
    }
    
    /**
     * Removes and returns the item at the top of the stack.
     * 
     * @return The item removed from the top of the stack.
     * @throws StackUnderflowException If the stack is empty.
     */
    public Object pop() {
        if (this.isEmpty()) {
            throw new StackUnderflowException('StackUnderflowException');
        }
        return this.items.remove(size() - 1);
    }
    
    /**
     * Returns the number of items currently in the stack.
     * 
     * @return The number of items in the stack.
     */
    public Integer size() {
        return this.items.size();
    }
    
    /**
     * Returns the item at the top of the stack without removing it.
     * 
     * @return The item at the top of the stack.
     * @throws StackUnderflowException If the stack is empty.
     */
    public Object peek(){
        if(this.isEmpty()){
            throw new StackUnderflowException('StackUnderflowException');
        }
        return this.items.get(this.items.size()-1);
    }
    
    /**
     * Checks whether the stack is empty.
     * 
     * @return true if the stack is empty, false otherwise.
     */
    public Boolean isEmpty() {
        return this.items.size() == 0;
    }

    /**
     * Clears all items from the stack.
     */
    public void clear(){
        while (this.items.size() != 0) {
            this.pop();
        }
    }
}
