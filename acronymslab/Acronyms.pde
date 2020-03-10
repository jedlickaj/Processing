import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class Acronyms
{
  private Map<String,String> acronymTable;

  public Acronyms()
  {
    acronymTable = new TreeMap<String,String>();



  }

  public void putEntry(String entry)
  {
    String [] list = entry.split(" - ");
    String k = list[0];
    String v = list[1];
    acronymTable.put(k,v);




  }

  public String convert(String sent)
  {
    Scanner chop = new Scanner(sent);
    String output ="";
    while(chop.hasNext()){
      String s = chop.next();
      String test = s.replaceAll("\\.", "");
      if(acronymTable.get(test)==null){
        output += s + " ";
      }else if(!s.equals(test)){
        output+=acronymTable.get(test) + ". ";
      }else{
        output += acronymTable.get(s) + " ";
      }
    }
    return output;
  }

  public String toString()
  {
    return acronymTable.toString().replaceAll("\\,","\n");
  }
}
