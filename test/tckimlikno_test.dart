import 'package:test/test.dart';
import 'package:tckimlikno/tckimlikno.dart';

void main() {
  group('must be true', () {
    test('True tc id number / first tc id number for ATATURK ', () {
      expect(isTckimlikno(10000000146), equals(true));
    });
  });

  group('must be false', () {
    test('more than 11 digits', () {
      expect(isTckimlikno(111111111111), equals(false));
    });

    test('less than 11 digits', () {
      expect(isTckimlikno(222222), equals(false));
    });

    test('11 digits but not true', () {
      expect(isTckimlikno(12345678998), equals(false));
    });
  });
}
