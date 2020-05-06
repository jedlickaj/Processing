import java.util.Queue;
import java.util.Stack;
import java.util.Arrays;
import java.util.LinkedList;
import java.lang.String;

//Queue q = new LinkedList();
//Stack s = new Stack();


void setup(){
  PalinList pl = new PalinList("one two three two one");
  pl.separate();
  //pl.isPalin();
  println(pl);
  pl.erase();
  //println(pl);
  //println(pl.isPalin());
  
  pl.setList("racecar car car racecar");
  pl.separate();
  println(pl);
  pl.erase();
  
  pl.setList("hello world hello world hi");
  pl.separate();
  println(pl);
  pl.erase();
  
  pl.setList("one two three four");
  pl.separate();
  println(pl);
  pl.erase();

}

public class PalinList{
  private Queue<String> q;
  private Stack<String> s;
  private String[] list;
  private String show;

  public PalinList(){
    q = new LinkedList<String>();
    s = new Stack<String>();
    //setList("");
  }

  public PalinList(String l){
    show = l;
    list = l.split(" ");
    q = new LinkedList<String>();
    s = new Stack<String>();
  }

  public void setList(String l){
    show = l;
    list = l.split(" ");
  }
  
  public void separate(){
    
    
    if(list.length%2 == 0){
      for(int i = 0; i < list.length/2; i++){
        q.add(list[i]);
      }
      //println(q);
      for(int i = list.length/2; i < list.length; i++){
        s.push(list[i]);
      }
      //println(s);
      
    }else{
      for(int i = 0; i < (list.length-1)/2; i++){
        q.add(list[i]);
      }
      //println(q);
      for(int i = ((list.length+1)/2); i < list.length; i++){
        s.push(list[i]);
      }
      //println(s);
    }
  }
  
  public void erase(){
    q.clear();
    s.clear();
    //println(q);
    //println(s);
  }

  public boolean isPalin(){
    int errors = 0;
    while(!s.empty()){
      String t1 = s.pop();
      String t2 = q.remove();
      //println(t1);
      //println(t2);
      if(!t1.equals(t2)){
        errors = errors + 1;
        //println("no");
      }
    }
    if(errors >= 1){
      //println("false");
      return false;
    }else{
      //println("true");
      return true;
    }
  }

  //write a toString method
  public String toString(){
    return show + "\n" + isPalin() + "\n";
  }
}
