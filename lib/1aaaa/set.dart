// learning Generic in dart
class Cache<T> {
  // to create a variable use
  // late final T _obj;
  // sometimes you might light to expose your variable , use this

  // dynamic _obj;
  // dynamic get value => _obj;

  // another way to use this is
  Cache(dynamic i);
  late final T _obj;

  T get value => _obj;
}

abstract class Cache2<T> {
  late final T _obj;
  Cache2(this._obj);

  T get value => _obj;
  set min(th) {
    th = _obj;
  }

  void handle() {}
}

// 1
class LocalCache<T> extends Cache2<T> {
  LocalCache(T obj) : super(obj);
  void handle() {}
}
// 2

class CloudCache<T, K> extends Cache2<T> {
  CloudCache(T obj, K obj2) : super(obj);
  void handle() {}
}

// to use this we can
void main() {
  // final cache = Cache<int>(20);
  final cache = Cache(20);
  String value = cache.value;

  final c = Cache("men");
}
