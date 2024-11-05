
//main dart function
void main(){
  //anonymous function fullName
  var fullName = () {
    print("This user's full name is Emmanuel Tofunmi Funmilayo");
  };
  //calling the anonymous function
  fullName();

  //example 2 to print foods contained in a list
  var foods = ["rice", "bread&egg", "noodles", "spag", "amala", "semo"];
  
  foods.forEach((food){
    print(food);
  });

  //example 3 to print items
  var colours = ["white", "black", "purple", "yellow", "blue", "orange"];

  colours.forEach((color){
    print("Colours in my list : $color");
  });
}