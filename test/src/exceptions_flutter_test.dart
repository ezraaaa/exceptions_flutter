import 'package:exceptions_flutter/exceptions_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExceptionsFlutter', () {
    test('can be instantiated', () {
      expect(const ExceptionsFlutter(), isNotNull);
    });

    test('supports value equality', () {
      final stackTrace = StackTrace.current;
      expect(
        ExceptionsFlutter(
          code: 'code1',
          message: 'message1',
          stackTrace: stackTrace,
        ),
        ExceptionsFlutter(
          code: 'code1',
          message: 'message1',
          stackTrace: stackTrace,
        ),
      );
    });

    test('props are correct', () {
      final stackTrace = StackTrace.current;
      final exception = ExceptionsFlutter(
        code: 'code1',
        message: 'message1',
        stackTrace: stackTrace,
      );
      expect(exception.props, ['code1', 'message1', stackTrace]);
    });

    test('code property is correct', () {
      const exception = ExceptionsFlutter(code: 'code1');
      expect(exception.code, 'code1');
    });

    test('message property is correct', () {
      const exception = ExceptionsFlutter(message: 'message1');
      expect(exception.message, 'message1');
    });

    test('stackTrace property is correct', () {
      final stackTrace = StackTrace.current;
      final exception = ExceptionsFlutter(stackTrace: stackTrace);
      expect(exception.stackTrace, stackTrace);
    });
  });
}
