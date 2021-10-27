import '../array/array.dart';

class Queue {
  FixedSizeArray dataset = new FixedSizeArray(initialSize: 5);

  void enqueue(int entry) => dataset.insert(entry);

  int dequeue() => dataset.removeLast();
}
