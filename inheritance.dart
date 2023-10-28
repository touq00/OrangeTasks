//inheritance
void main() {
  Lion scar = Lion(
    skinColor: 'Brown',
     weight: 210);

  Dog jack = Dog(
      bloodType: 'idk what type have dogs lmfao',
      skinColor: 'Black',
      weight: 50);

  Cat kitty = Cat(
    skinColor: 'White',
     weight: 20);

  scar.eat();
  scar.Roar();
  print("${scar.numOfLimbs}");
  kitty.Meo();
}

class Animals {
  String skinColor;
  int numOfLimbs = 4;
  double weight;

  Animals({required this.skinColor, required this.weight});///here i can access the attributes thats in class
                                                           /// animal from the subclasses lion,dogs

  
  eat() {
    print("eating");
  }

  sleep() {
    print("Sleeping");
  }

  walk() {
    print("Walking");
  }
}

class Lion extends Animals {
  //seperated line for constructor
  Lion({required String skinColor, required double weight})
      : super(
            skinColor: skinColor,
            weight:
                weight); //super goes(gives data) to class that i extends from

  Roar() {
    print("Roaring");
  }
}

class Dog extends Animals {
  //another type for the constructor line
  // this= gives the blood type to dog --local
  String bloodType;
  Dog(
      {required this.bloodType,
      required super.skinColor,
      required super.weight});

  Bark() {
    print("Barking");
  }
}

class Cat extends Animals {
  Cat({required super.skinColor, required super.weight});

  Meo() {
    print("Meo");
  }
}
