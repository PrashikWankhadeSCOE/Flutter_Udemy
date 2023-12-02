/*
used for every element inside a list/map/set
for each element -> do
does not have an index 
while iterating through a ist we can not manipulate it
*/
void main() {
  List<int> list = [3, 4, 5, 6, 6, 8, 7];
  List<int> secList = [];

  list.forEach((element) => secList.add(element));
  print(secList);
}
