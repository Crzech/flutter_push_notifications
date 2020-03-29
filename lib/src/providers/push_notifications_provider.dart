
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationProvider {


  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  initNotifications() {

    _firebaseMessaging.requestNotificationPermissions();

    _firebaseMessaging.getToken().then((token) {
      print('==== FCM TOKEN =======');
      print(token);

      // e1tX1_u5yE8:APA91bHOI0HvY_aKcS582_l1IsSG3-n8GX-JMr7EpCEuV643h3Ppdq3bWFmz8bYn3nmlFyjjQribJ8No33zV2kwyTBfnWnujiMI-kILyYi0Qphg8nSwaZo5N5Pb4jv-F3QZ4ojfYqwoj
    });

    _firebaseMessaging.configure(
      onMessage: (info) async {
        print('===== on message =====');
        print(info);
      },
      onLaunch: (info) async {
        print('===== on launch =====');
        print(info);
        final noti = info['data']['comida'];
        print(noti);
      },
      onResume: (info) async {
        print('===== on resume =====');
        print(info);
        // final noti = info['data']['comida'];
        // print(noti);
      },
    );

  }

}