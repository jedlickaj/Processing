
Part p;

void setup(){
  //String [] str = loadStrings("data/autoparts.dat");
  //PartList pl = new PartList();
  ////println(str);
  //for(String s : str){
  //  //println(s + "\n");
  //  p = new Part(s);
  //}
  PartList pList = new PartList("data/autoparts.dat");
  println(pList);
}
