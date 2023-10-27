//import 'dart:io';

void main(){
int  add(int a, int b, int c, int d){
  return a + b + c + d;
}

 Function(int)? addCurrying(int a){
   Function(int) inner1= (int b){
     Function(int) inner2 = (int c){
       Function(int) inner3 = (int d){
        return add(a,b,c,d);
      };
      return inner3;
    };
    return inner2;
  };
  return inner1;
};
final addTwo = addCurrying(2);
final addThree = addTwo!(5);
final addFour = addThree(3);
final res = addFour(4);
print(res);
}