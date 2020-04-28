import java.util.Stack;

Circus circus;
String[] c0;
String[] c1;
String[] c2;

void setup(){
  c0 = loadStrings("circus0.txt");
  
  //println("Set 1: ");
  Circus circus = new Circus(c0);
  circus.inOrder();
  //circus.show();
  
  //println("Set 2: ");
  //circus = new Circus(c1);
  //circus.inOrder();
  //circus.show();
  
}
