import java.util.Random;



public class Tree{
  
  private int NodeCount;
  private Random rdColors;
  private int R;
  private int G;
  private int B;
  private Node root;
  
  public Tree(int value){
    this.root = new Node(value);
    this.NodeCount = 1;
    this.rdColors = new Random();
    this.R = rdColors.nextInt(255);
    this.G = rdColors.nextInt(255);
    this.B = rdColors.nextInt(255);
    
  }
  
  private class Node{
    int value;
    Node right;
    Node left;
    
    private Node(int v){
      value = v;
      right = null;
      left = null;
    }
    
    private int getValue(){
      return value;
    }
    
  }
  
  public int getNodeCount(){
    return this.NodeCount;
  }
  
  
  public void insert(int value){
    root = insert(value, root); 
  }
  
  private Node insert(int value, Node node){
    if(node==null){
      node = new Node(value);
      return node;
    } else { 
      if(value < node.getValue()){
        node.left = insert(value, node.left);
      } else {
        node.right = insert(value, node.right);
      }
    }
    return node;
  }
  
  public void print(int dir){
    int direction = dir;
    root = print(root, width/2, height/2, 0, 1, direction);
  }
  
  private Node print(Node node, int larghezza, int altezza, int i, int j, int direction){
   if(node == null){
     return null;
   } else {
     
     stroke(R - node.getValue(), G - node.getValue(), B - node.getValue());
     line(larghezza,altezza,larghezza-node.getValue()*direction, altezza-i*j);

     larghezza = larghezza-node.getValue()*direction;
     altezza = altezza-i*j;
     
     node.left = print(node.left,larghezza, altezza, i=20, 1, direction);
     node.right = print(node.right, larghezza, altezza, i=20, -1, direction);
   }
   return node;
   
  }
  
  
}
