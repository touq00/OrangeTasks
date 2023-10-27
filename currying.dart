import 'dart:io';

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
final addFive = addTwo(5);
final addTen = addFive(3);
final res = addTen(4);
print(res);
}