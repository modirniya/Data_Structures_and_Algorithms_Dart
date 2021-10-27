class MyArray {
  static const int _defaultValue = -1;

  late var elements;
  late int size;
  var lastIdx = -1;

  MyArray({required int initialSize}) {
    elements = _createBlankList(initialSize);
    size = initialSize;
  }

  insert(int entry) => lastIdx < size - 1
      ? elements[++lastIdx] = entry
      : _increaseSizeThenInsert(entry);

  remove() => lastIdx >= 0
      ? elements[lastIdx--] = _defaultValue
      : print('Nothing to remove');

  removeAt(int idx) {
    if (idx > lastIdx || idx < 0) {
      print('Invalid index');
    } else {
      for (int i = idx; i < size - 1; i++) {
        elements[i] = elements[i + 1];
      }

      elements[lastIdx--] = _defaultValue;
    }
  }

  void _increaseSizeThenInsert(int entry) {
    final tempArray = _createBlankList(size *= 2);
    List.copyRange(tempArray, 0, elements);
    elements = tempArray;
    insert(entry);
  }

  List<int> _createBlankList(int initialSize) => List.filled(
        initialSize,
        _defaultValue,
      );

  @override
  String toString() {
    String res = '';
    for (int i = 0; i < lastIdx; i++) res += '${elements[i]},';
    return '[$res]';
  }
}
