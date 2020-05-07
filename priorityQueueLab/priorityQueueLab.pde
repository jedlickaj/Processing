import java.util.Queue;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.PriorityQueue;

void setup(){
  PQTester test = new PQTester("one two three four five six seven");
  println(test);
  println(test.getMin());
  println(test.getNaturalOrder());
  
}


public class PQTester
{
  private Queue<String> pq;
  String[] list;

  public PQTester(){
    pq = new PriorityQueue();
  }

  public PQTester(String l){
    pq = new PriorityQueue();
    list = l.split(" ");
    for(int i = 0; i < list.length; i++){
      pq.add(list[i]);
    }
  }

  public void setPQ(String l){
    list = l.split(" ");
    for(int i = 0; i < list.length; i++){
      pq.add(list[i]);
    }
  }
  
  public Object getMin(){
    String min = pq.element();
    return min;
  }
  
  public String getNaturalOrder(){
    String output="";
    for(int i = 0; i < list.length; i++){
      output += pq.poll() + " ";
    }
    return output;    
  }

  //write a toString method
  public String toString(){
    return pq + " ";
  }
}
