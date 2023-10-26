import 'dart:io';
 void main() 
 {
   stdout.write("Enter the number : ");
    String input = stdin.readLineSync()!;
     int n = int.parse(input);
      int result = Fib(n);
       print("Fibonacci number for $n is $result"); 
  } 
    int Fib(int n)
    {
       if(n<=1) 
       return n;
        return Fib(n-1)+Fib(n-2); 
        }