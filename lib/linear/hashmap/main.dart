import 'hashmap.dart';

main() {
  var hashmap = new HashMap(size: 3);
  var names = [
    "Parham",
    "Peyman",
    "Neda",
    "Yasmin",
    "Farzam",
    "Shadi",
    "Ruda",
    "Mehrdad",
    "Behzad",
    "Mehrad",
  ];
  for (int i = 0; i < names.length; i++) hashmap.put(i, names[i]);
  print(hashmap.get(1));
  print(hashmap.remove(3));
  print(hashmap.get(3));
}
