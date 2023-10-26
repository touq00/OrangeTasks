import 'dart:io';
import 'dart:math';
void main(){
  
  Random random = Random();
   int num = random.nextInt(100);
  print("Number is guessed now \n try your guess");
  while(true){
    print("enter your guess");
    int userGuess= int.parse(stdin.readLineSync()!);
    if(userGuess > num){
      print("your guess is high try again");
    }else if(userGuess < num){
      print("your guess is low try again");
    }else {
      break;
    }
  }
  print("Congrats youve guessed the number");
}