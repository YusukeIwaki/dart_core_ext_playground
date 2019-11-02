part of dart_core_ext;

extension IntExt on int {
  Iterable<int> get times => Iterable<int>.generate(this);

  void timesDo(void op(int index)) {
    Iterable<int>.generate(this).forEach(op);
  }
}
