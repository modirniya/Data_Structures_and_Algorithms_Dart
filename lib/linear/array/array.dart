class FixedSizeArray {
  static const int _defaultValue = -1;

  late List array;
  int count = 0;

  FixedSizeArray({required int initialSize}) {
    array = _createNewBlankList(initialSize);
  }

  int get size => array.length;

  bool get isEmpty => count == 0;

  bool get isFull => count == size;

  void insert(int entry) {
    if (isFull) _increaseCapacity();
    array[count++] = entry;
  }

  void insertAt(int index, {required int entry}) {
    if (index < 0) return;
    if (isFull) _increaseCapacity();
    _shiftRight(toIdx: index);
    count++;
    array[index] = entry;
  }

  int removeLast() => isEmpty ? -1 : array[--count];

  int removeAt(int index) {
    if (isEmpty || index < 0) return -1;
    var result = array[index];
    _shiftLeft(fromIdx: index);
    return result;
  }

  void _shiftRight({required int toIdx}) {
    for (int i = count; i > toIdx; i--) array[i] = array[i - 1];
  }

  void _shiftLeft({required int fromIdx}) {
    for (int i = fromIdx; i < count; i++) array[i] = array[i + 1];
  }

  List _createNewBlankList(int size) => new List.filled(
        size,
        _defaultValue,
        growable: false,
      );

  void _increaseCapacity() {
    var newArray = new List.filled(
      size * 2,
      _defaultValue,
      growable: false,
    );
    List.copyRange(newArray, 0, array);
    array = newArray;
  }

  @override
  String toString() {
    return '\nFixedSizeArray{array: $array, count: $count}';
  }
}
