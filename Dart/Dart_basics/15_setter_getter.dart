/*
everyone can see my eyes but
not everyone knows my passport id 
*/

void main() {
  Car car1 = new Car();
  car1.setColor = "blue";

  String colorformcar = car1.color;

  print('colot form car 1 : $colorformcar');
}

class Car {
  late String _color;
  set setColor(String color) {
    //here you can validate the input
    this._color = color;
  }

  String get color => this._color;

  void drive() {
    print("  $_color Car is moving");
  }
}
