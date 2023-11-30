/*
Array is like a variable you can store multiple values in it
it is a Data Sructure
Specific values can be accessed via index

List can store mixed datatype data like string and int or any other 
but array cannot store diffrent datatype data 
Array and list start form index 0

Maps are asle data structures with key-value pair
to access to value is done via the corresponding key 
like json format 

*/

void main() {
  List<dynamic> list = [10, 20, 30];
  print(list);

  print(list[0]);
  print(list[1]);

  print(list.length);
  print(list.first);
  print(list.isEmpty);
  list.add("value");
  print(list);

  Map map = {"key1": "value1", "key2": "value2", "key3": false};

  print(map);

  print(map["key2"]);
  print(map.length);
  print(map.keys);
  print(map.entries);
}
