import 'll_stack.dart';

main() {
  var stack = new LLStack();
  var entries = [3, 7, 2, 1, 8, 4, 5];
  for (int entry in entries) stack.push(entry);
  print(stack.pop());
  print(stack.pop());
  print(stack.pop());
}
