/*
//! Every class has a constructor 
//! used to build create an object
//! it is called first when you create the object
//! used to intialize attributes
*/

void main() {
  final Car bluecar = Car('blue', 'v8');
  print(bluecar.color);
  bluecar.whichcolor();
}

class Car {
  late String color;
  late String engine;

  Car(this.color, this.engine);

  void drive() {
    print('cat is moving');
  }

  void whichcolor() {
    print('car color : $color');
  }
}
