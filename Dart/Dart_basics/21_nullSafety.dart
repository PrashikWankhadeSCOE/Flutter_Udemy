/*

*/

void main() {
  int nonNullable = 10; //! this value cannot be null
  // nonNullable = null;

  int? nullable = null; //! this can be nullable

  late String description;
  //? hey i am not initializing the ele now i will definetly
  //? give it value later

  description = "here i have assigned";
  print(description);

  //! late is dangerous than null safety

  print(nonNullable);
  print(nullable);

  //nonNullable = nullable; //! None null assertion operation

  nonNullable =
      nullable ?? 1; //? this will add 1 in the value if the nullable is null

  String? nullableString = 'prashik';
  nullableString = null;
  int StringLength = nullableString?.length ?? 0;
  print(StringLength);
}
