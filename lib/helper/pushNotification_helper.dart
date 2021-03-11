import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationHelper {
  PushNotificationHelper._();

  factory PushNotificationHelper() => _instance;
  static final PushNotificationHelper _instance = PushNotificationHelper._();

  bool _initialized = false;

  Future<void> init() async {
    if (!_initialized) {
      // For iOS request permission first.
      await Firebase.initializeApp();

      // For testing purposes print the Firebase Messaging token
      String token = await FirebaseMessaging.instance.getAPNSToken();
      print("FirebaseMessaging token: $token");

      _initialized = true;
    }
  }
}
