/*
a programing style
adapted to the human thinking 
objects :
writable
can work together
using to solve problem
//
example: CAR
:wheels
:doors
:color
:can drive
:can honk

//
Classes are blueprint for objects 
: properties 
: methods
you can create many objects form one class and can have diffrent values for properties

*/

void main() {
  Car car = new Car();
  car.color = "red";

  Car car2 = new Car();
  car2.color = 'blue';

  car.whichcolor();
  car2.whichcolor();

  car.drive();
}

class Car {
  //! attribute can be added here
  late String color;

  //! more methods can be added here
  void drive() {
    print('$color car is moving');
  }

  void whichcolor() {
    print('car color : $color');
  }
}
