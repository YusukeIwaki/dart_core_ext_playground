import 'package:test/test.dart';
import 'package:dart_core_ext/dart_core_ext.dart';

void main() {
  group(".times", () {
    test("returns Iterable<int>", () {
      var result = 5.times.map((i) => i * i );
      expect(result, equals([0, 1, 4, 9, 16]));
    });
  });

  group(".times()", () {
    test("operates repeatedly", () {
      var result = [];
      5.timesDo((i) {
        result.add(i * 2);
      });
      expect(result, equals([0, 2, 4, 6, 8]));
    });
  });
}
