

//function to print a greeting
void greetMe() => print("Hello, what do you have planned for the day?");

void main(){
  greetMe();

  
  //example 2, finding SI without arrow function
   // Principal amount, rate of interest, and time period
  double principal = 1000.0;
  double rate = 5.0;
  double time = 3.0;

  // Function to calculate simple interest
  double calculateSimpleInterest(double p, double r, double t) {
    return (p * r * t) / 100;
  }

  // Calling the function and storing the result
  double interest = calculateSimpleInterest(principal, rate, time);

  // Printing the result
  print("The simple interest is: \$${interest}");
  

  //example 3, finding principal with arrow function
  // Principal amount, rate of interest, and time period
  double principal2 = 2000.0;
  double rate2 = 5.0;
  double time2 = 2.0;

  // Arrow function to calculate simple interest
  double calculateSimpleInterest2 (double p2, double r2, double t2) => (p2 * r2 * t2) / 100;

  // Calling the function and storing the result
  double interest2 = calculateSimpleInterest2(principal2, rate2, time2);

  // Printing the result
  print("The simple interest is: \$${interest2}");

}