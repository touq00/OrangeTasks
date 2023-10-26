import 'dart:io';
//import 'dart:math';
void main(){
print("enter the first number");
double num1= double.parse(stdin.readLineSync()!);
print("enter the second number");
double num2= double.parse(stdin.readLineSync()!);

print("enter the operation : ");
String? operator = stdin.readLineSync()!;
// aaaa
if(operator == "+"){
  print("addition==> ${num1}+${num2}= ${num1+num2}");
}else if(operator=="-"){
  print("subtraction ==> ${num1} - ${num2}= ${num1-num2}");
}else if(operator=="*"){
  print("multiplication  ==> ${num1} * ${num2}= ${num1*num2}");
}else if(operator=="/"){
   print("division  ==> ${num1} / ${num2}= ${num1/num2}");
}else{
  print("invalid operation");
}
//aasodcjsdewfwekfhgwiuf;kv

}