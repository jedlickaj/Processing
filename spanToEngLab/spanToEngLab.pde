import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

//public class SpanRunner
//{
//  public static void main( String args[] ) throws IOException
//  {
//  }
//}
void setup(){
 
  SpanishToEnglish se = new SpanishToEnglish();
  //se.putEntry("data/spantoeng.dat");
  String[] str = loadStrings("data/spantoeng.dat");
  String[] str1 = loadStrings("data/spansentence.dat");
  
  for(String s : str){
    se.putEntry(s);
  }
  
  for(String s : str1){
    println(se.translate(s));
  }
  //println(se);
}
