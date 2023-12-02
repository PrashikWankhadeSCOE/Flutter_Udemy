/*
when you know how often the loop should be repeated
for loop have a counter(index,which contains the nurrent number of the run).
*/

void main() {
  List<int> list = [3, 5, 7, 9, 1, 11, 13];
  List<int> seclist = [];

  for (int i = 0; i < list.length; i++) {
    print('list element is  ${list[i]}');
    if (list[i] % 2 != 0) {
      seclist.add(list[i]);
    }
  }
  print(seclist);
}
