import 'dart:io';

void main()
{
   final greetAyoub = personName("Ayoub",40);
  final greetSuhaib = personName("suhaib",40);
  greetAyoub!();
  greetSuhaib!();

}

Function? personName(String name, int age){
  String msg = "Hello, ";
  
 void printInfo(){
  print("$msg $name! your $age is similar");
 }
 return printInfo;
}


















 