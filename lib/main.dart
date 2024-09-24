import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sih_women_safety/auth/authentication_wrapper.dart';
// Importing the notification service
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter',
      theme:ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home:const AuthenticationWrapper(),
      debugShowCheckedModeBanner: false,
  
    );
  }
}
