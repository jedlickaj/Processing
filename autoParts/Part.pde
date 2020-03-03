public class Part implements Comparable<Part>
{
  private String make, mode, theRest="";
  private int year;

  public Part(String line) 
  {
    String[] list = line.split(" ");
    make = list[list.length-3];
    mode = list[list.length-2];
    year = Integer.parseInt(list[list.length-1]);
    for(int i=0; i<list.length-3; i++){
      theRest+=list[i] + " " ;
    }
    //heRest = list[0];




  }

  //have to have compareTo if implements Comparable
  public int compareTo( Part other )
  {
    if(this.make.compareTo(other.make) > 0){
      return 1;
    }
    else if(this.make.compareTo(other.make) < 0){
      return -1;
    }
    else if(this.mode.compareTo(other.mode) > 0){
      return 1;
    }
    else if(this.mode.compareTo(other.mode) < 0){
      return -1;
    }
    else if(this.year < other.year){
    return -1;
    }
    else if(this.year > other.year){
    return 1;
  }


    return this.theRest.compareTo(other.theRest);
  }

  public String toString()
  {
    return "" + make + " " + mode + " " + year + " " + theRest;
  }
}
