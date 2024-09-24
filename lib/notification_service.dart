import 'dart:convert';
import 'package:http/http.dart' as http;  // Import HTTP package
import 'package:firebase_messaging/firebase_messaging.dart';  // Firebase Messaging

// Background message handler for Firebase Messaging
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");
}

// Function to send push notification
Future<void> sendPushNotification() async {
  final String serverToken = 'YOUR_SERVER_KEY';  // Add your FCM Server key

  try {
    await http.post(
      Uri.parse('https://fcm.googleapis.com/fcm/send'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'key=$serverToken',
      },
      body: jsonEncode(
        <String, dynamic>{
          'to': 'USER_FCM_TOKEN',  // Target user's FCM token
          'notification': <String, dynamic>{
            'title': 'Alert',
            'body': 'Potential Threat Detected. Stay Safe!',
          },
          'data': <String, dynamic>{
            'click_action': 'FLUTTER_NOTIFICATION_CLICK',
            'message': 'Threat detected in your area',
          },
        },
      ),
    );
  } catch (e) {
    print('Error sending notification: $e');
  }
}

// Simulating model detection for demo
void handleDetectionResult(int result) {
  if (result == 1) {
    sendPushNotification();
  }
}
