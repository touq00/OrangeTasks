import 'dart:io';

void main(){
  double sum=0.0;
  int i;
  for (i=1; i<=4 ;i++)
  {
    stdout.write("Enter the score for subject $i ");
    double score = double.parse(stdin.readLineSync()!);
    sum = sum + score;
  }
  double avg = sum /4;
  print("the avg score for grades is $avg");
}