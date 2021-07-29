import java.util.Random;


public Tree tree;
public Random rd;

void setup(){
  Random rd = new Random();
  tree = new Tree(5);
  strokeWeight(3);
  noFill();
  background(0);
  size(1920 ,1080);
  
  for(int i = 0; i<200; i++){
    int r = rd.nextInt(200);
    while(r==0){
      r = rd.nextInt(200);
    }
    tree.insert(r);
  }
  
  tree.print(1);
  tree.print(-1);
  
  
}

  
