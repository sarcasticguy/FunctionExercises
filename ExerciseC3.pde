// Exercise C-3: OK, here is the opposite problem. 
// Here is a line of code that assumes a function that 
// takes two numbers, multiplies them together, and 
// displays the result in large text. Write the 
// function definition that goes with this function call.

int a=1;
int b=2;
int c=3;
void multiply(int a, int b, int c){
  int total=a*b*c;
  println(total);
}

void draw(){
  multiply(a, b, c);
}
