// Extending the String class with an extension method

extension StringExtensions on String {

 // Method to capitalize the first letter of a string

 String capitalizeFirstLetter() {

  if (this.isEmpty) {

   return this;

  }

  return this[0].toUpperCase() + this.substring(1);

 }

}




void main() {

 // Create a String object

 String message = "hello, world!";

  

 // Use the extension method to capitalize the first letter

 String capitalizedMessage = message.capitalizeFirstLetter();

  

 // Print the result

 print(capitalizedMessage); // Output: Hello, world!

}