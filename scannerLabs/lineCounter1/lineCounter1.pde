

void setup(){
 LineCounter lc = new LineCounter("9 10 5 20 1 2 3");
 println(lc);
 lc.setLine("9 4 5");
 println(lc);
 lc.setLine("400 30 64 214");
 println(lc);
}
