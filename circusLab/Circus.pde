import java.util.Iterator;
class Circus{
  
  private Stack <String> stack;
  private String fullList = " ";
  private String [] data;
  
  Circus(String[] s){
    stack = new Stack <String>();
    for(int i = 0; i<s.length; i++){
      fullList+=s[i] + " ";
    }
    data = fullList.split("[0-9]");
    
  }
  
  void inOrder(){
    for(int i = 0; i<data.length; i++){
      
      String [] list = data[i].split(" ");
      
      for(int j = 0; j < list.length; j+=2){
        stack.push(list[j]);
      }
      
      if(list.length%2 == 0){
        for(int k = list.length-1; k > 0; k-=2){
          stack.push(list[k]);
        }
      }
      
      else{
        for(int l = list.length-2; l > 0; l-=2){
          stack.push(list[l]);
        }
      }
      if(i>0){
      println("Set : " + i);
      while(!stack.empty()){
        println(stack.pop());
      }
    }
    }
  }
  void show(){
  //  while(!stack.empty()){
  //    println(stack.pop());
  //  }
    for(int i = 0; i < data.length; i++){
      println(data[i]);
    }
  }
  
}
