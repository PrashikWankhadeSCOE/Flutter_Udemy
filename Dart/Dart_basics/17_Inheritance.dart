/*
inheritance allows you to extention of class 
Example : 
Class person,class Student 
> student class inherits all fuctionalities form the person class
> student class can have own methods and attributes

Mixins:
>Possibility of multiple inheritance
>use of defined funtionalities in addition toinheritance
*/

void main() {
  Student student = Student();
  student.setSemester = 2;
  student.setName = "kabir";
  student.setAge = 10;

  Person person = new Person();
  person.setName = "Prashik";
  person.setAge = 22;

  int semester = student.getSemester;
  print(semester);

  student.jump();
  student.study();
  student.run();
}

mixin Learner {
  void study() {
    print('study');
  }
}

mixin Jumper {
  void jump() {
    print("I can jump");
  }
}

class Person {
  late String _name;
  late int _age;

  String get getName => this._name;
  int get getAge => this._age;

  set setName(String name) {
    this._name = name;
  }

  set setAge(int age) {
    this._age = age;
  }

  void run() {
    print('$_name runs!');
  }
}

class Student extends Person with Jumper, Learner {
  late int _semester;
  int get getSemester => this._semester;

  set setSemester(int semester) {
    this._semester = semester;
  }

  void party() {
    print('$_name is on a party!');
  }
}
