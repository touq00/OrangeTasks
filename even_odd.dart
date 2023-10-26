import 'dart:io';

void main(){
  print("Enter A Number");
  int number= int.parse(stdin.readLineSync()!);
  
  if(number == Null){
    print("Invalid input");
  }else if(number % 2 ==0){
    print("$number is an even number");
  }else if (number %2 == 1){
    print("$number is an odd number");
  }
}