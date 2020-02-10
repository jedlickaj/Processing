import java.util.ArrayList;
import java.util.Iterator;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

public class MovieList{
  
  int count;
  ArrayList <Movie>movieList;
  String [] str;
  
  public MovieList(){
    movieList = new ArrayList<Movie>();
    
  }
  
  public int loadMovies(){
   String [] str = loadStrings("data/movieReviews.txt");
    for(String s : str){
      Scanner scan = new Scanner(s);
      movieList.add(new Movie(scan.nextInt(), scan.nextLine()));
    }
    for(Movie m: movieList){
     // println(m);
    }
    
    return count;
  }
  
  int countWords(String s){
    int count=0;
    for(Movie m: movieList){
      if(m.getReview().contains(s)){
        count++;
      
    }
    }
    return count;
  }
  
  public double getAverageScore(String s){
    double total = 0;
    double count = 0;
    int bigAverage = 0;
    double average = 0;
    for(Movie m : movieList){
      if(m.getReview().contains(s)){
      total += m.getRating();
      count ++;
      }
    }
    bigAverage = (int)((100)*(total/count));
    average = (double)(bigAverage);
    return (average/100);
  }
  
  public String overallComment(String s){
    if(getAverageScore(s)==4){
      return "superb";
    }
    if(getAverageScore(s)==3){
      return "great";
    }
    if(getAverageScore(s)==2){
      return "good";
    }
    if(getAverageScore(s)==1){
      return "fair";
    }
    if(getAverageScore(s)==0){
      return "bad";
    }
    return " ";
  }
  
  void sortMoviesByCount(){
    Collections.sort(movieList);
  }
  
  public String toString(){
    //Iterator <Movie> it = movieList.iterator();
    //while(it.hasNext()){
    //  return it.next();
    //}
    //return " ";
    return " " + movieList;
  }
  
}
