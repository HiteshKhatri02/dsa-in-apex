public class GeneralTree {
    public TNode root;
    
    public GeneralTree(){
        this.root = null;
    }

    public class TNode{

        public Object data;
        public LinkedList siblings;
        public TNode myLeftChild;

        public TNode(Object data){
            this.data = data;
            siblings = null;
            myLeftChild  = null;
        }
    }

    public TNode newNode(Object data)
    {
        TNode temp = new TNode(data);
        return temp;
    }

}