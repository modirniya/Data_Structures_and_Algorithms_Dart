import 'dart:collection';

class Entry extends LinkedListEntry<Entry> {
  int key;
  String value;

  Entry({required this.key, required this.value});
}

class HashMap {
  late final List<LinkedList<Entry>> _dataset;

  HashMap({required int size}) {
    _dataset = new List.filled(size, new LinkedList<Entry>());
  }

  void put(int key, String value) {
    var entry = _getEntry(key);
    if (entry != null) {
      entry.value = value;
      return;
    }
    final bucket = _getBucket(key);
    bucket.add(
      new Entry(key: key, value: value),
    );
  }

  String get(int key) {
    Entry? entry = _getEntry(key);
    return entry != null ? entry.value : "Entry not found";
  }

  String remove(int key) {
    Entry? entry = _getEntry(key);
    _getBucket(key).remove(entry!);
    return entry.value;
  }

  Entry? _getEntry(int key) {
    LinkedList<Entry> bucket = _getBucket(_hash(key));
    for (Entry entry in bucket) if (entry.key == key) return entry;
  }

  LinkedList<Entry> _getBucket(int key) => _dataset[_hash(key)];

  int _hash(int key) => key % _dataset.length;
}
