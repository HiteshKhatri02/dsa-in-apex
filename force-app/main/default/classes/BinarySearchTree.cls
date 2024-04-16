public class BinarySearchTree {

    

    public BinarySearchTree(){
       
    }

    public class Node{
        private Integer key {get; set;}
        private Node leftNode {get; set;}
        private Node rightNode {get; set;}

        public Node(){
           //default;
        }
    
        public Node(Integer key){
            this.key = key;
            this.leftNode = null;
            this.rightNode = null;
        }
    }

    public Node insertNode(Node rootNode, Integer val){
       
        if(rootNode == null || rootNode.key == null){
            return new Node(val);
        }

        if(rootNode.key == val){
            throw new ListException();
        }
        
        
        if(val < rootNode.key){
            rootNode.leftNode = insertNode(rootNode.leftNode, val);
        }else {
            rootNode.rightNode = insertNode(rootNode.rightNode, val);
        }

        return rootNode;
    }
    
}