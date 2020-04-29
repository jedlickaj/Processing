import java.util.Stack;

void setup(){
    PostFix test = new PostFix("2 7 + 1 2 + +");
    test.solve();
    //System.out.println(test);

    //test.setExpression("1 2 3 4 + + +");
    //test.solve();
    //System.out.println(test);
}

public class PostFix{
    private Stack<Double> stack;
    private String expression;

    public PostFix(){
        stack = new Stack<Double>();
        setExpression("");
    }

    public PostFix(String exp){
        stack = new Stack<Double>();
        setExpression(exp);
    }

    public void setExpression(String exp){
        expression = exp;
        println(expression);
    }

    public double calc(double one, double two, char op){
      double temp = 0;
      if(op == '+'){
        temp = one + two;
      }
      if(op == '-'){
        temp = one - two;
      }
      if(op == '*'){
        temp = one * two;
      }
      if(op == '/'){
        temp = one/two;
      }
      return temp;
        
    }

    public double solve() {
        String[] parts = expression.split(" ");
        for(int i = 0; i < parts.length; i++){
          if(parts[i] == "1"){
            stack.push((double)(1.0));
          }
          else if(parts[i] == "2"){
            stack.push((double)(2.0));
            return(2.0);
          }
          else if(parts[i] == "3"){
            stack.push((double)(3.0));
          }
          else if(parts[i] == "4"){
            stack.push((double)(4.0));
          }
          else if(parts[i] == "5"){
            stack.push((double)(5.0));
          }
          else if(parts[i] == "6"){
            stack.push((double)(6.0));
          }
          else if(parts[i] == "7"){
            stack.push((double)(7.0));
          }
          else if(parts[i] == "8"){
            stack.push((double)(8.0));
          }
          else if(parts[i] == "9"){
            stack.push((double)(9.0));
          }
          else if(parts[i] == "0"){
            stack.push((double)(0.0));
          }
          else{
            String s = parts[i];
            char c = s.charAt(0);
            double temp1 = stack.pop();
            double temp2 = stack.pop();
            stack.push(calc(temp1, temp2, c));
          }
        }
        return stack.pop();
        //return 0;
        
        
        
        
    }

    public String toString() {
        return expression + " = " + solve();
    }
}
