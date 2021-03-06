import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class PartList
{
  private TreeMap<Part, Integer> partsMap;
  
  public PartList()
  {
    partsMap = new TreeMap<Part, Integer>();


  }
  
  public PartList(String fileName)
  {
    this();
    //String [] str = loadStrings("data/autoparts.dat");
    //this();
    String [] str = loadStrings(fileName);
    Part p;
    for(String s : str){
      p = new Part(s);
      if(partsMap.get(p) == null){
        partsMap.put(p, 0);
      }
       partsMap.put(p, partsMap.get(p)+1);
    }
    //loadStrings() or:
    //try
    //{
    //  Scanner file = new Scanner(new File("lab08d.dat"));
    //  //add code here to read from the file 
    //  //and add Parts to the map




    //}
    //catch( IOException e )  //Most specific exceptions must be listed 1st
    //{
    //  out.println(e);
    //}
    //catch( RuntimeException e )
    //{
    //  out.println(e);
    //}
    //catch( Exception e )
    //{
    //  out.println(e);
    //}
    //finally
    //{
    //  //no code needed here
    //}
  }
  
  public String toString()
  {
    String output="";
    for(Part part : partsMap.keySet()){
      output += part + " - "+partsMap.get(part)+"\n";
    }




    return output;
  }
}
