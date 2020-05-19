import static java.lang.System.*;

public class ListFunHouseTwo
{
  private ListNode theList = null;

  public ListFunHouseTwo() {
  }

  public void add(Comparable data) {
    if (theList == null) {
      theList = new ListNode(data, null);
      theList.setNext(theList);
    } else {
      ListNode f = theList;
      ListNode l = theList;
      theList = theList.getNext();
      while (theList != f) {
        l = theList;
        theList = theList.getNext();
      }
      l.setNext(new ListNode(data, f));
      //out.println(data);
    }
  }

  //this method will return the number of nodes present in list
  public int nodeCount() {
    int count=1;
    ListNode num = theList;
    num = num.getNext();
    while (num!=theList) {
      count++;
      //println(num.getValue());
      num = num.getNext();
    }
    return count;
  }

  //this method will create a new node with the same value as the first node and add this
  //new node at the front of the list.  Once finished, the first node will occur twice.
  public void doubleFirst() {
    theList.setNext(new ListNode(theList.getValue(), theList.getNext()));
  }

  //this method will create a new node with the same value as the last node and add this
  //new node at the end.  Once finished, the last node will occur twice.
  public void doubleLast()
  {
    ListNode f = theList;
    ListNode l = theList;
    f = f.getNext();
    while(f != theList){
      //println("true");
      l = f;
      f = f.getNext();
    }
    l.setNext(new ListNode(l.getValue(), theList));
  }

  //method skipEveryOther will remove every other node
  public void skipEveryOther(){
    removeXthNode(2);
  }

  //this method will set the value of every xth node in the list
  public void setXthNode(int x, Comparable value){
    ListNode f = theList;
    ListNode l = theList;
    ListNode temp = theList;
    int count = 1;
    f = f.getNext();
    while(f != theList){
      if(count % x == 0){
        out.println(temp.getValue());
        temp.setValue(value);
      }
      temp = temp.getNext();
      f = f.getNext();
      count++;
    }
    //temp.setValue(value);
  }  

  //this method will remove every xth node in the list
  public void removeXthNode(int x)
  {
    int count = 1;
    ListNode p = null;
    ListNode temp = theList;
    ListNode f = theList;
    ListNode l = theList;
    theList = theList.getNext();
    while(theList != f){
      if(count % x == 0){
        p.setNext(temp.getNext());
        println(p.getValue());
        //count++;
      }
      p = temp;
      temp = temp.getNext();
      count++;
      l = theList;
      theList = theList.getNext();
      
      
    }
    
  }    
  //this method will return a String containing the entire list
  public String toString()
  {
    String output="";
    
    ListNode temp = theList;
    while(temp.getNext() != theList){
      output += (temp.getValue() + " ");
      //out.println(temp.getValue());
      temp = temp.getNext();
    }
    output += temp.getValue();
    return output;
  }
}
