import '../linked_list/linked_list.dart';

class LLQueue {
  LinkedList dataset = new LinkedList();

  void enqueue(int entry) => dataset.insert(entry);

  int dequeue() => dataset.removeTail();
}
