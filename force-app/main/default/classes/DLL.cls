public class DLL {
    private Node head;

    public DLL(){
        this.head = null;
    }
    
    public class Node{
        private Node prevNode;
        private Node nextNode;

        private Object data;

        public Node(Object data){
            this.data = data;
            this.nextNode = null;
            this.prevNode = null;

        }
    }

    public void push(Object newData){

        Node n = new Node(newData);
        n.nextNode = head;
        n.prevNode = null;

        if(head != null){
            n.prevNode = n;
        }

        head = n;
    }

    public void deleteData(Object data){

       if(this.head == null){
        throw new NullPointerException();
       }

       //
        if (head.data == data) {
            head = head.nextNode;
            return;
        }

       Node last = head;

       while (last.nextNode != null) {
                last = last.nextNode;
                if(last.data == data){
                    break;
                }
           
       }


       //change next node only 
       //if node to be deleted is not the last node
       if(last.nextNode != null){
            last.nextNode.prevNode = last.prevNode;
        }

        //change prev node only
        //if node to deleted in not the first node.
        if(last.prevNode != null){
            last.prevNode.nextNode = last.nextNode;
        }
    }


    public void deleteNode(Node tempNode){

        if(this.head == null || tempNode == null){
         throw new NullPointerException();
        }
 
        if (head ==  tempNode) {
            head = tempNode.nextNode;
        }

        //Change next only if
        //If node to be delted is not the last node.
        if(tempNode.nextNode != null){
            tempNode.nextNode.prevNode = tempNode.prevNode;
        }
        //change prev onyl
        //if node to be deleted is not the first node.
        if(tempNode.prevNode != null){
            tempNode.prevNode.nextNode = tempNode.nextNode;
        }
     }

    public void deleteFromTail(){
        if(this.head == null){
            throw new NullPointerException();
        }

        Node last = head;

        while (last.nextNode != null) {
            last = last.nextNode;
        }

        //check if prevNode is not the first node;
        if(last.prevNode != null){
            last.prevNode.nextNode = null;
        }
    }

    public void pop(){
        if(this.head == null){
            throw new NullPointerException();
        }

        this.head = this.head.nextNode;
        this.head.prevNode = null;
    }

    public void insertAfter(Node prevNode, Object data){
        if(prevNode == null){
            throw new NullPointerException();
        }

        Node newNode = new Node(data);
        newNode.nextNode = prevNode.nextNode;
        prevNode.nextNode = newNode;
        newNode.prevNode = prevNode;

        if(newNode.nextNode != null){
            newNode.nextNode.prevNode = newNode;
        }
    }

    public void insertBefore(Node nNode, Object data){
        if(nNode == null){
            throw new NullPointerException();
        }

        Node newNode = new Node(data);
        newNode.prevNode = nNode.prevNode;
        newNode.nextNode = nNode;
        nNode.prevNode = newNode;

        if(nNode.prevNode != null){
            newNode.prevNode.nextNode = newNode;
        }else {
            this.head = newNode;
        }
    }

    public void addToTail(Object data){
        Node newNode = new Node(data);
        if(this.head == null){
            this.head = newNode;
            return;
        }

        Node last = head;
        
        while(last.nextNode != null){
            last = last.nextNode;
        }
        last.nextNode = newNode;
        newNode.prevNode = last;
    }
}