public class BinaryTree {
   

    public class Node{
        private Object data {get; set;}
        private Node leftNode {get; set;}
        private Node rightNode {get; set;}

        public Node(){
            this.data = this.leftNode = this.rightNode = null;
        }
    
        public Node(Object data){
            this.data = data;
            this.leftNode = null;
            this.rightNode = null;
        }
    }

    public void insertNode(Node rootNode, Node keyNode){
        if (rootNode == null) {
            
        }
    }
}