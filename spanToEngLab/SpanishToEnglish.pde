import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class SpanishToEnglish
{
  private Map<String,String> pairs;

  public SpanishToEnglish()
  {
    pairs = new TreeMap<String, String>();
    
 


  }

  public void putEntry(String entry)
  {
    //String[] str = loadStrings(entry);
    String[] list = entry.split("=");
    String k = list[0];
    String v = list[1];
    pairs.put(k,v);
    






  }

  public String translate(String sent)
  {
    Scanner chop = new Scanner(sent);
    String output ="";
    while(chop.hasNext()){
      output+=pairs.get(chop.next())+" ";
    }

    return output;
  }

  public String toString()
  {
    return pairs.toString().replaceAll("\\,","\n");
  }
}
