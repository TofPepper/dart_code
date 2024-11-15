class Circle{
  //private property with underscore(_)
  double _radius;

  //constructor to initialize the radius
  Circle(this._radius);

  //getter method to access the private radius
  double get radius => _radius;

  //setter method to update the radius 
  set radius (double value) {
    if (value > 0 ) {
      _radius = value;
    } else {
      print('Value must be greater than zero');
    }
  }

  // Method to calculate area of the circle
  double calculateArea() {
    return 3.1416 * _radius * _radius; // Area = πr²
  }
}

void main() {
  // Creating an instance of Circle
  Circle circle = Circle(5.0);

  // Accessing the radius using getter
  print("Initial radius: ${circle.radius}");

  // Calculating and printing the area
  print("Initial area: ${circle.calculateArea()}");

  // Updating the radius using setter
  circle.radius = 7.0;

  // Accessing updated radius and area
  print("Updated radius: ${circle.radius}");
  print("Updated area: ${circle.calculateArea()}");

  // Trying to set an invalid radius
  circle.radius = -3.0; // This will trigger validation
}
 

