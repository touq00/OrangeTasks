void main() {
  Car myCar = Car('Bmw', 'E46', 2002, 9000);
  myCar.displayCarInfo();
// i updated my car price
  myCar.price = 9500;
  print('  Updated Car Information:');
  myCar.displayCarInfo();
}
class Car {
  //Attributes + methods
  //constructors have no return type
  // BME E46 2002 $9000
  String _type;          // encapsulation = no acces from outsidethe file
  String _model; 
  int year; 
  double _price; 

  Car(this._type, this._model, this.year, this._price);
  //getter
  String get type => _type;
  String get model => _model; 
  double get price => _price; 

  //setter
  set price(double newPrice) {
    if (newPrice >= 0) {
      _price = newPrice;
    }
  }

  String get details => '$year $_type $_model';

  void displayCarInfo() {
    print('Car Details: $details');
    print('Price: \$${price.toStringAsFixed(2)}');
  }
}

