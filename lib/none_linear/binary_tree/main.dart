import 'bst.dart';

main() {
  BinarySearchTree bst = generateBST();
  BinarySearchTree bst2 = generateBST();
  print(bst.find(12));
  bst.traversePreOrder();
  print('');
  bst.traverseInOrder();
  print('');
  bst.traversePostOrder();
  print('');
  print(bst.getMin());
  // bst.swapRootChildren();
  print(bst.validateBST());
  print(bst.getHeight());
  print(bst.getNodesAtDistance(1));
  print(bst.isEqual(bst2));
}

BinarySearchTree generateBST() {
  var bst = new BinarySearchTree();
  bst.insert(12);
  bst.insert(14);
  bst.insert(6);
  bst.insert(1);
  return bst;
}
