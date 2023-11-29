/*
primitive data types
// these are written small 
bool : true/false
integer : 3
double : 3.7

complex data types 
// these are written with starting letter capital 
// you have more than one single primitive datatype data here
String : 'text'
List : [1,2.5,3]
Map : {'key' : 'value'}

Keywords : written before variable to give them special power

final -> once value is given it cannot be changed in its complete lifetime 
const -> set while compiling, not changeable 
var -> at the moment i dont know which data type it is but as you get the value you will yourself know the datatype
late -> we will assign a value to you later
*/

void main() {
  bool boolOutput = false;
  boolOutput = true;
  print(boolOutput);

  int intOutput = 1;
  print(intOutput);
  // this intOutput cannot be assigned 1.5
  double doubleOutput = 1.5;
  print(doubleOutput);

  String str = 'Learing this from max & max Udemy';
  print(str);

  print("Hello Prashik !");
  print('the value is : $doubleOutput');

  dynamic dinamicvariable = "text";
  print(dinamicvariable.runtimeType);
  // Keywords :

  late int exampleInt;
  exampleInt = 1;
  print(exampleInt);
  //Simillarly
  int? intExample;
  intExample = 10;
  print(intExample);
  //late and ? are same

  final int finalInt = 2;
  print(finalInt);

  //finalInt = 5; final can not be changed

  const int constint = 4;
  // this cannot be assigned at runtime
  print(constint);

  var varOutput;
  varOutput = 10;
  print(varOutput.runtimeType);
}
