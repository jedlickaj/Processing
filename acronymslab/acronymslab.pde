
void setup(){
  Acronyms a = new Acronyms();
  String [] str = loadStrings("data/acro.dat");
  String [] str1 = loadStrings("data/acroConvert.dat");
  
  for(String s : str){
    a.putEntry(s);
  }
  for(String s : str1){
    println(a.convert(s));
  }
}
