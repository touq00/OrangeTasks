//inheritance
void main() {
  Lion scar = Lion();
  Dog jack = Dog();
  Cat kitty = Cat();

scar.eat();
jack.eat();
kitty.eat();
// zoo => animals // this is polymorphism 
List<Animals> zooAnimals =[scar, jack,kitty];
}

abstract class Animals {

  int? numOfLimbs = 4;

  eat(); // {mthod} now every class that extends animals MUST be override eat()

  sleep() {
    print("Sleeping");
  }

  walk() {
    print("Walking");
  }
  sneaky(); //same here
}

class Lion implements Animals {  //implements take EVERYTHING from the Animal class and override it --doing differntly
@override
eat(){
print("hunt and eat another animals");
}

  Roar() {
    print("Roaring");
  }
  
  @override
  sneaky() {
    print("Very sneaky");
  }
  
  @override
   int? numOfLimbs=4;
  
  @override
  sleep() {
   print("in dark area forest");
  }
  
  @override
  walk() {
    print("walking to find food");
  }
}

class Dog extends Animals {      //extends take what they want and make a dif one of it
@override
eat(){
print("human gives meat");
}
  Bark() {
    print("Barking");
  }
  
  @override
  sneaky() {
    print("not sneakt att all");
  }
}

class Cat extends Animals {
@override
eat(){
print("human gives specific food");
}

  Meo() {
    print("Meo");
  }
  
  @override
  sneaky() {
  print("very good hider and lil bit sneaky");
  }
}
