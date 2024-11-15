//Declaring a class in Dart called Person
class Person {
  //Class Properties
  String name;
  int age;

  //constructor
  Person(this.name, this.age);

  //Method to display person details
  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

class Car {
  String brand;
  String model;

  Car(this.brand, this.model);

  void showDetails(){
    print('Brand: $brand, Model: $model');
  }
}

//types of constructor
//default constructor
class myDetails{
  String name1 = 'Unknown';
  int age1 = 0;
}

//Parameterized constructor
class myData {
  String name2;
  int age2;

  //parameterized constructor
  myData(this.name2, this.age2);
  
}

void main(){
  Person me = Person('Tofunmi', 20);
  Car myCar = Car('Toyota', 'Corrolla');

  //for default constructor
  myDetails details = myDetails();
  print('Name: ${details.name1}, Age: ${details.age1}');

  //for parameterized constructor
  myData data = myData('Adetayo', 30);
  print('Name: ${data.name2}, Age: ${data.age2}');

  me.displayInfo();
  myCar.showDetails();
}