
//function with return type but no parameter
// Function to add two integers and return the result
int add(int a, int b) {
  return a + b;
}

int product(int num1, int num2){
  return num1*num2;
}

String name(String first, String last){
  return first +  last;
}

void main() {

  String greet = name("Hello", "Student");
  print(greet);
  // Calling the function with two integers
  int result = add(10, 20);
  
  // Printing the result
  print("The sum of 10 and 20 is: $result");

  int answer = product(23,34);
  print("The multiplication of 23 and 34 is $answer");
}