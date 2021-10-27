class Node {
  late int value;
  Node? next;

  bool hasNext() => next != null;

  Node({
    required this.value,
    this.next = null,
  });
}
