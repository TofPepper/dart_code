//example 1
//function with parameter and no return type
void printName(String name1){
  print("This user's name is $name1");
}

void printAge(String age1){
  print("This ought to be an integer but this user's age is $age1. Thanks!");
}

void main(){
  printName("Alex Jumbo");
  printAge("16");
}
//in this, to my undetstanding, the function holds the text, explanation. While the main function (void main) holds the main part of the message. 
//For example, when printing a name of a student, just the name will be added as a parameter in the void main, but a more detailed statement(e.g, name is a student, or name is a female) will be stated in the function of the name