import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_app/counter.dart';

void main() {
  group('Counter', () {
    test('El valor inicial debe ser 0', () {
      final counter = Counter();
      expect(counter.value, 0);
    });

    test('El valor debe incrementarse en 1 cuando se llama a increment()', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });

    test('El valor debe incrementarse correctamente varias veces', () {
      final counter = Counter();
      counter.increment();
      counter.increment();
      counter.increment();
      expect(counter.value, 3);
    });
  });
}
