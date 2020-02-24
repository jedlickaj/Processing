import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import java.util.Scanner;
import static java.lang.System.*;

public class OddEvenSets
{
  //private Set<Integer> odds;
  //private Set<Integer> evens;
  Set<Integer> odds = new TreeSet<Integer>();
  Set<Integer> evens = new TreeSet<Integer>();

  public OddEvenSets()
  {
  }

  public OddEvenSets(String line)
  {
    String[] str = line.split(" ");
    for(String s : str){
      int x = Integer.parseInt(s);
      if(x%2 == 0){
        evens.add(x);
      }else{
        odds.add(x);
      }
    }
  }

  public String toString()
  {
    return "ODDS : " + odds + "\nEVENS : " + evens + "\n\n";
  }
}
