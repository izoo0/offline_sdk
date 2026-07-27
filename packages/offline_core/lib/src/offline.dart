import 'offline_config.dart';
import 'offline_exception.dart';

class Offline {
  Offline._internal(this.config);

  static Offline? _instance;

  final OfflineConfig config;

  static Offline get instance {
    if (_instance == null) {
      throw const OfflineException('Offline has not been initialized.');
    }

    return _instance!;
  }

  static bool get initialized => _instance != null;

  static Future<void> initialize({required OfflineConfig config}) async {
    if (_instance != null) {
      throw const OfflineException('Offline has already been initialized.');
    }

    _instance = Offline._internal(config);
  }
}
