void main() {
  // Passing a function to a higher-order function
  void addNum(int a, int b) {
    print(a + b);
  }
  otherFunc("Hello", addNum);

  // Receiving a function from a higher-order value
  var resMulFour = taskToPerform();
  print(resMulFour(10));

  // Double the list in mapping
  List<int> listOfNum = [1, 2, 3, 4, 5];
  List<int> doubleNumbers = map(listOfNum, (num1) => num1 * 2);
  print("Mapped doubled list: $doubleNumbers");

  // Filter even numbers in a list
  List<int> evenNumbers = filter(listOfNum, (num) => num % 2 == 0);
  print("Filtered List (Even Numbers): $evenNumbers");
}

// Accepts a function as a parameter
void otherFunc(String msg, void Function(int, int) myFunc) {
  print(msg);
  myFunc(2, 4);
}

// Returns a function
int Function(int) taskToPerform() {
  int mulFour(int num) => num * 4;
  return mulFour;
}

// Custom map function
List<T> map<T>(List<T> list, T Function(T) callback) {
  List<T> result = [];
  for (T item in list) {
    result.add(callback(item));               
  }
  return result;                                                // T in the map and filter faster and ran out of words
}
                                                     
// Custom filter function
List<T> filter<T>(List<T> list, bool Function(T) callback) {
  List<T> result = [];
  for (T item in list) {
    if (callback(item)) {
      result.add(item);
    }
  }
  return result;
}
