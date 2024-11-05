//function to print name
void printFirstName(){
  print('Tofunmi');
}

//function to print name
void printLastName(){
  print('Emmanuel');
}

//function to print name
void printFullName(){
  print('Tofunmi Emmanuel');
}

//function to find sum of two numbers and print
void findSum(int num1, int num2){
  int sum = num1 + num2;
  print('The sum of $num1 and $num2 is $sum');
}

//function to find product of two numbers and print
void findProduct(int num3, double num4){
  double product = num3 * num4;
  print('The product of $num3 and $num4 is $product');
}

//main body of code
void main(){
  printFirstName();
  printLastName();
  printFullName();
  findSum(10, 20);
  findProduct(45, 34.7);
  findProduct(33, 2);
}