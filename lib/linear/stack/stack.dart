import '../array/array.dart';

class Stack {
  final dataset = new FixedSizeArray(initialSize: 5);

  void push(int entry) => dataset.insert(entry);

  int pop() => dataset.removeLast();
}
