import 'array.dart';

main() {
  final array = FixedSizeArray(initialSize: 2);
  var entries = [3, 7, 2, 1, 8, 4, 5];
  for (int entry in entries) array.insert(entry);
  print(array);
  array.removeAt(3);
  // array.removeAt(2);
  print(array);
  array.insertAt(3, entry: 69);
  array.insert(132);
  array.insert(123);
  print(array);
}
