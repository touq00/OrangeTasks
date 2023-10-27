//import 'dart:io';

void main(){
int  add(int a, int b, int c, int d){
  return a + b + c + d;
}

int Function(int) Function(int) Function(int) addCurrying(int a){
  return (int b) {
    return (int c) {
      return (int d) {
        return add(a ,b ,c,d);
      };
    };
  };
};
final addTwo = addCurrying(2);
final addThree = addTwo(5);
final addFour = addThree(3);
final res = addFour(4);
print(res);
}