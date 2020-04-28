void setup() {
  IntStack test = new IntStack();
  test.push(5);
  test.push(7);
  test.push(9);
  System.out.println(test);
  System.out.println(test.isEmpty());
  System.out.println(test.pop());
  System.out.println(test.peek());
  System.out.println(test.pop());
  System.out.println(test.pop());
  //System.out.println(test.peek());  //blows up
  System.out.println(test.isEmpty());
  System.out.println(test);
}

class IntStack {

  //pick your storage for the stack
  //you can use the an array or an ArrayList

  //option 1
  //private int[] rayOfInts;
  //private int numInts;

  //option 2
  private ArrayList<Integer> listOfInts;

  public IntStack() {
    listOfInts = new ArrayList<Integer>();
  }

  public void push(int item) {
    listOfInts.add(0, item);
  
  }

  public int pop() {
    int temp = listOfInts.get(0);
    listOfInts.remove(0);
    return temp;
    

  }

  public boolean isEmpty() {
    if(listOfInts.isEmpty()){
      return true;
    }
    return false;
  
  }

  public int peek() {
    return listOfInts.get(0);
 
  }

  public String toString() {
    return listOfInts + " ";
 
  }
}
