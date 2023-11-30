/*

*/

void main() {
  int age = 16;
  print('user is $age year old');
  if (age >= 18) {
    print("You can enter the movie");
  } else if (age >= 16) {
    print('you can enter but with parents permission');
  } else {
    print('You are not allowed to watch the movie ');
  }
}
