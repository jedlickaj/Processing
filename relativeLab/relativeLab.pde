
void setup(){
  Relatives r = new Relatives();
  String[] str = loadStrings("data/relatives.dat");

  for(String s : str){
    r.setPersonRelative(s);
  }
  println(r.getRelatives("Dot"));
  println(r);
  
  //TreeMap<String, Set<String>> map = new TreeMap<String, Set<String>>();
  //for(String s : str){
  //  String[] personRelative = s.split(" ");
  //  String k = personRelative[0];
  //  String v = personRelative[1];
    
  //  if(map.get(k) == null){
  //    map.put(k, new TreeSet<String>());
  //  }
  //  map.get(k).add(v);
  //}
  //println(map);
}
