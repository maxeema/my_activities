class Consumable<T> {
  Consumable(this._object) : assert(_object != null);

  T? get object => _object;
  T? _object;

  bool _consumed = false;

  bool get isConsumed => _consumed;

  T consume() {
    if (_consumed || object == null) throw StateError('An error object has already been consumed');
    final ref = object!;
    _object = null;
    _consumed = true;
    return ref;
  }
}
