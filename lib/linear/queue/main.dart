import 'll_queue.dart';
import 'queue.dart';

main() {
  var entries = [3, 7, 2, 1, 8, 4, 5];
  Queue queue = Queue();
  for (int entry in entries) queue.enqueue(entry);
  for (int i = 1; i < 4; i++) print(queue.dequeue());
}

