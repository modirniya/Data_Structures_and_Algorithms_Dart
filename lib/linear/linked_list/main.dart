import 'linked_list.dart';

main() {
  var entries = [3, 7, 2, 1, 8, 4, 5];
  LinkedList ll = new LinkedList();
  for (int entry in entries) ll.insertTail(entry);
  ll.insert(12);
  print(ll);
}
