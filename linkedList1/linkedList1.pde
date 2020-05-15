import java.util.LinkedList;
import static java.lang.System.*;

void setup() {
  JavaLinkedList test = new JavaLinkedList(new int[]{4, 5, 6, 7, 8, 9, 10, 11, 12, 13});
  //println(test.getLargest());
  out.println(test);

  test = new JavaLinkedList(new int[]{24, 75, 86, 37, 82, 94, 111, 82, 43});
  //println(test.getLargest());
  out.println(test);

  test = new JavaLinkedList(new int[]{0, 4, 5, 2, 1, 4, 6});
  //println(test.getLargest());
  out.println(test);
}

public class JavaLinkedList
{
  private LinkedList<Integer> list;

  public JavaLinkedList()
  {
    list = new LinkedList<Integer>();
  }

  public JavaLinkedList(int[] nums)
  {
    list = new LinkedList<Integer>();
    for (int num : nums)
    {
      list.add(num);
    }
  }

  public double getSum(  )
  {
    double total=0;
    for(int i = 0; i < list.size(); i++){
      total += list.get(i);
    }
    return total;
  }

  public double getAvg(  )
  {
    double avg = getSum() / list.size(); 
    return avg;
  }

  public int getLargest()
  {
    int largest=Integer.MIN_VALUE;
    for(int i = 0; i < list.size(); i++){
      if(list.get(i) > largest){
        largest = list.get(i);
      }
    }
    return largest;
  }

  public int getSmallest()
  {
    int smallest = Integer.MAX_VALUE;
    for(int i = 0; i < list.size(); i++){
      if(list.get(i) < smallest){
        smallest = list.get(i);
      }
    }
    return smallest;
  }

  public String toString()
  {
    String output= "Sum: " + getSum() + "\nAverage: " + getAvg() + "\nSmallest: " + getSmallest() + "\nLargest: " + getLargest() + "\n";
    return output;
  }
}
