
//standard function
//to calculate tax for a price, you will need to divide the tax % by 100 to get taxrate. Then you multiply the taxrate by the price and find the total amount of the price by adding the original price to the tax calulated
//the reason my sum and price is used that way, it's to add, the consecutive prices in the list, the sum is the consecutive addition of th prices in the list and the price is the individual price in the list
// Function to calculate the total price with optional tax parameter
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double subtotal = prices.reduce((sum, price) => sum + price);
  double taxAmount = subtotal * taxRate;
  return subtotal + taxAmount;
}


//this function filters prices that are greater than the stated price(noted as threshold) or equal to it
//the certain price is saved and declared as a decimal threshold and the certain price is stated in the main function of the body of code
// Anonymous function to filter out items below a certain price threshold (e.g., $10)
List<double> filterItems(List<double> prices, double threshold) {
  return prices.where((price) => price >= threshold).toList();
}


//in this function, map applies the function to all prices in the list, adn iterates it
//to list converts the result of the map to a list
// Higher-order function to apply a discount to a list of prices
List<double> applyDiscount(List<double> prices, double Function(double) discountFunc) {
  return prices.map((price) => discountFunc(price)).toList();
}


//this function calculates the price of the object when a discount rate has been stated
//it is first divided by 100, to convert it to a decimal, then it is subtracted from one to get the price when the discount is calculated and sustracted, then it is multiplied by the price
//it is multipled by the original price to calculate the discounted price
// Discount function that reduces a price by a percentage
double discount(double price, double discountRate) {
  return price * (1 - discountRate / 100);
}

// Recursive function to calculate factorial discount based on the number of items
int calculateFactorialDiscount(int n) {
  if (n <= 1) return 1;
  return n * calculateFactorialDiscount(n - 1);
}

void main() {

  //list of prices
  // Sample items and initial prices in the cart
  //try to avoid many items in the list, the special discount is factorial of the number of items in the list, so many items can result in having a negative final total
  //but you can manipulate your prices in the list below
  List<double> cartPrices = [ 45.09, 238.99, 2.99];

  //printing out the whole prices in the list before printing the filtered prices
  print("All prices in the list: $cartPrices");

  //printing the number of items i the list
  print("The number of items bought is:  ${cartPrices.length}");
  
  //calling out filterItems function that filters prices greater or equal to 10.0(threshold), also printing out the filtered items in the list and saving it as filtererdPrices
  //because that is the list that will be worked on throughout
  // Filter out items below $10 using an anonymous function
  List<double> filteredPrices = filterItems(cartPrices, 10.0);
  print("Filtered Prices (items >= \$10) that will be worked on: $filteredPrices");


  //applying discount function(applyFunction) to all the items in the filtered price
  //also calling discount fucntion in the applyFunction to reduce the price by the stated discountRate(10%)
  // Apply a discount to each item in the filtered list
  double discountRate = 10.0; // 10% discount
  List<double> discountedPrices = applyDiscount(filteredPrices, (price) => discount(price, discountRate));
  print("Discounted Prices (after $discountRate% discount): $discountedPrices");


  //calling the calculateTotal to calculate the total price after adding tax to the discounted individaul prices
  //toString.. converts the total price to 2 decimal places
  // Calculate the total after applying discount
  double taxRate = 0.05; // 5% tax
  double totalAfterDiscountAndTax = calculateTotal(discountedPrices, taxRate: taxRate);
  print("Total after discount and tax: \$${totalAfterDiscountAndTax.toStringAsFixed(2)}");


  //this also calls the recursuve function to calculate a special discount based on the number of items in the list
  //prints the total and also converts it to 2 decimal places
  // Calculate and apply additional special discount based on factorial
  int factorialDiscountPercentage = calculateFactorialDiscount(filteredPrices.length);
  double specialDiscountRate = factorialDiscountPercentage / 100.0;
  double finalTotal = totalAfterDiscountAndTax * (1 - specialDiscountRate);
  print("Final Total after special discount (${factorialDiscountPercentage}%): \$${finalTotal.toStringAsFixed(2)}");
}
