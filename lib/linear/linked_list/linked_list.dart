import 'node.dart';

class LinkedList {
  Node? _head;
  Node? _tail;

  void insert(int value) {
    if (isEmpty())
      _head = _tail = new Node(value: value);
    else
      _head = new Node(value: value, next: _head);
  }

  void insertTail(int value) {
    if (isEmpty())
      _head = _tail = new Node(value: value);
    else {
      var newNode = new Node(value: value);
      _tail!.next = newNode;
      _tail = newNode;
    }
  }

  int remove() {
    if (isEmpty()) return -1;
    var result = _head!.value;
    _head = _head!.next;
    return result;
  }

  int removeTail() {
    if (isEmpty()) return -1;
    Node curr = _head!;
    int result = _tail!.value;
    while (curr.next != _tail) {
      curr = curr.next!;
    }
    _tail = curr;
    return result;
  }

  bool isEmpty() => _head == null;

  @override
  String toString() {
    StringBuffer result = new StringBuffer();
    Node? curr = _head!;
    do {
      result.write("${curr!.value}, ");
      curr = curr.next;
    } while (curr != null);
    return result.toString();
  }
}
