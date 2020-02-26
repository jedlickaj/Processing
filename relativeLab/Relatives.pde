import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.Scanner;
//import java.util.Iterator;
import static java.lang.System.*;

public class Relatives
{
  private Map<String,Set<String>> map;

  public Relatives()
  {
    map = new TreeMap<String, Set<String>>();



  }

  public void setPersonRelative(String line)
  {
    String[] personRelative = line.split(" ");
    String k = personRelative[0];
    String v = personRelative[1];
    
    if(map.get(k) == null){
      map.put(k, new TreeSet<String>());
    }
    map.get(k).add(v);
  }


  public String getRelatives(String person)
  {
    String relatives = " ";
    Set<String> str = map.get(person);
    for(String s : str){
      relatives += s + " ";
    }
    return relatives;
  }


  public String toString()
  {
    String output="";
    //for(Map.Entry<String, Set<String>> s : map.entrySet()){
    //  return s.getKey() + " is related to:" + s.getValue();
    //}
    Set<String> keys = map.keySet();
    for(String s : keys){
      output += s + " is related to " + map.get(s) + "\n";
    }
    
    return output;
  }
}
