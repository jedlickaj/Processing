import static java.lang.System.*;

class Movie implements Comparable<Movie>{
  
  private int rating;
  private String review;
  
  public Movie(int ra, String re){
    rating = ra;
    review = re;
  }
  
  public int getRating(){
    return rating;
  }
  
  public String getReview(){
    return review;
  }
  
  public int compareTo(Movie other){
    if (this.rating < other.rating){
       return -1;
    }
    if (this.rating > other.rating){
      return 1;
    }
    return 0;
  }
  
  public String toString(){
    return " " + rating + " " + review;
  }
  
}
