import 'package:flutter_test/flutter_test.dart';
import 'package:offline_core/offline_core.dart';

void main() {
  group('Offline', () {
    test('is not initialized by default', () {
      expect(Offline.initialized, isFalse);
    });

    test('throws when accessing instance before initialization', () {
      expect(() => Offline.instance, throwsA(isA<OfflineException>()));
    });

    test('initializes successfully', () async {
      await Offline.initialize(
        config: const OfflineConfig(baseUrl: 'https://example.com'),
      );

      expect(Offline.initialized, isTrue);
      expect(Offline.instance.config.baseUrl, 'https://example.com');
    });
  });
}
