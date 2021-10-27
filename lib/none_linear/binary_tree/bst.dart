import 'dart:math';

class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value);
}

class BinarySearchTree {
  Node? _root;

  void insert(int value) {
    _root = _insert(value, _root);
  }

  int getMin() => _getMin(_root);

  int getHeight() => _getHeight(_root);

  bool find(int value) {
    return _find(value, _root);
  }

  bool validateBST() => _validateBST(_root, min: -9999999, max: 9999999);

  bool isEqual(BinarySearchTree anotherTree) {
    return _isEqual(_root, anotherTree._root);
  }

  List getNodesAtDistance(int distance) {
    var result = <int>[];
    _getNodesAtDistance(_root, distance, result);
    return result;
  }

  void traversePreOrder() => _traversePreOrder(_root);

  void traverseInOrder() => _traverseInOrder(_root);

  void traversePostOrder() => _traversePostOrder(_root);

  void swapRootChildren() {
    if (_root!.right != null && _root!.left != null) {
      var temp = _root!.left;
      _root!.left = _root!.right;
      _root!.right = temp;
    }
  }

  Node? _insert(int value, Node? curr) {
    // base condition
    if (curr == null) return new Node(value);
    // redirecting recursion
    if (curr.value > value)
      curr.left = _insert(value, curr.left);
    else
      curr.right = _insert(value, curr.right);
    // returning
    return curr;
  }

  int _getMin(Node? curr) {
    if (curr!.left == null) return curr.value;
    return _getMin(curr.left);
  }

  int _getHeight(Node? curr) {
    // base condition
    if (curr == null) return -1;
    return 1 + max(_getHeight(curr.left), _getHeight(curr.right));
  }

  bool _find(int value, Node? curr) {
    if (curr == null) return false;
    if (curr.value == value) return true;
    if (curr.value > value)
      return _find(value, curr.left);
    else
      return _find(value, curr.right);
  }

  bool _validateBST(Node? curr, {required int min, required int max}) {
    if (curr == null) return true;
    if (curr.value > min && curr.value < max) {
      return _validateBST(curr.left, min: min, max: curr.value) &&
          _validateBST(curr.right, min: curr.value, max: max);
    } else
      return false;
  }

  void _traversePreOrder(Node? curr) {
    if (curr == null) return;
    print(curr.value);
    _traversePreOrder(curr.left);
    _traversePreOrder(curr.right);
  }

  void _traverseInOrder(Node? curr) {
    if (curr == null) return;
    _traverseInOrder(curr.left);
    print(curr.value);
    _traversePreOrder(curr.right);
  }

  void _traversePostOrder(Node? curr) {
    if (curr == null) return;
    _traversePostOrder(curr.left);
    _traversePostOrder(curr.right);
    print(curr.value);
  }

  void _getNodesAtDistance(Node? curr, int distance, List<int> results) {
    if (curr == null || distance < 0) return;
    if (distance == 0) results.add(curr.value);
    _getNodesAtDistance(curr.left, distance - 1, results);
    _getNodesAtDistance(curr.right, distance - 1, results);
  }

  bool _isEqual(Node? root, Node? root2) {
    // base condition
    if (root == null && root2 == null) return true;

    if (root != null && root2 != null)
      return (root.value == root2.value) &&
          _isEqual(root.left, root2.left) &&
          _isEqual(root.right, root2.right);
    return false;
  }
}
