import '../linked_list/linked_list.dart';

class LLStack {
  final dataset = new LinkedList();

  void push(int entry) => dataset.insert(entry);

  int pop() => dataset.remove();
}
