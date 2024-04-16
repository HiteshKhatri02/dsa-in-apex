// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents



GeneralTree gTree =  new GeneralTree(); 
gTree.root = new GeneralTree.TNode(1);

gTree.root.myLeftChild = new GeneralTree.TNode(2);

gTree.root.myLeftChild.siblings = new LinkedList();

gTree.root.myLeftChild.siblings.addToTail(new GeneralTree.TNode(3));
gTree.root.myLeftChild.siblings.addToTail(new GeneralTree.TNode(4));
gTree.root.myLeftChild.siblings.addToTail(new GeneralTree.TNode(5));
GeneralTree.TNode pNode = (GeneralTree.TNode)gTree.root.myLeftChild.siblings.get(1).data).data;
pNode.siblings = 



System.debug('Print LinkedList : '+ gTree.root.myLeftChild.siblings.toString());
System.debug('Print LinkedList : '+ ((GeneralTree.TNode)gTree.root.myLeftChild.siblings.get(1).data).data);