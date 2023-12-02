void main() {
  //records
  final result = records();
  print(result);
  print(result.$1);
  print(result.$2);

  final (first, last) = records();
  print(first);
  print(last);

  final describedDate = describeDate(DateTime.now());
  print(describedDate);

  final soundofanimal = whatDoesItSound(Sheep());
  print(soundofanimal);
}

String describeDate(DateTime dt) => switch (dt.weekday) {
      1 => 'Feeling relaxed after weekend ?',
      6 || 7 => 'Weekend ; Hurray !',
      _ => 'hung in there'
    };

(String, String) records() {
  final firstName = 'Prashik';
  final lastname = 'Wankhade';

  return (firstName, lastname);
}

String whatDoesItSound(Animal animal) =>
    switch (animal) { Cow c => '$c moo', Sheep s => '$s baa' };

sealed class Animal {}

class Cow extends Animal {}

class Sheep extends Animal {}
