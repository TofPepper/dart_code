// Abstract class - demonstrating Abstraction
abstract class Vehicle {
  // Abstract method (no implementation)
  void startEngine();
  
  // Concrete method (with implementation)
  void stopEngine() {
    print("The engine is stopped.");
  }
}

// Superclass - demonstrating Inheritance
class Car extends Vehicle {
  // Private variable - demonstrating Encapsulation
  String _model; // _model is private and cannot be accessed directly outside this class
  
  // Constructor
  Car(this._model);

  // Getter method to access the private variable (controlled access)
  String get model => _model;

  // Overriding the abstract method (Polymorphism)
  @override
  void startEngine() {
    print("The car engine of $_model is started.");
  }
}

// Another subclass - demonstrating Inheritance and Polymorphism
class Motorcycle extends Vehicle {
  // Private variable - demonstrating Encapsulation
  String _brand;

  // Constructor
  Motorcycle(this._brand);

  // Getter method to access the private variable (controlled access)
  String get brand => _brand;

  // Overriding the abstract method (Polymorphism)
  @override
  void startEngine() {
    print("The motorcycle engine of $_brand is started.");
  }
}

void main() {
  // Creating objects of Car and Motorcycle (Demonstrating Inheritance and Polymorphism)
  Car myCar = Car('Tesla');
  Motorcycle myMotorcycle = Motorcycle('Harley-Davidson');

  // Accessing private variables through getter methods (Encapsulation)
  print('Car model is: ${myCar.model}');
  print('Motorcycle brand is: ${myMotorcycle.brand}');
  
  // Calling methods to demonstrate Polymorphism
  myCar.startEngine();  // Outputs: The car engine of Tesla is started.
  myMotorcycle.startEngine();  // Outputs: The motorcycle engine of Harley-Davidson is started.
  
  // Calling the inherited method (demonstrating Inheritance)
  myCar.stopEngine();  // Outputs: The engine is stopped.
  myMotorcycle.stopEngine();  // Outputs: The engine is stopped.
}
