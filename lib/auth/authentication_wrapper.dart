import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sih_women_safety/auth/login_page.dart';
import 'package:sih_women_safety/pages/home_page.dart';

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(), // Loading indicator fixed
          );
        } else {
          if (snapshot.hasData) {
            return HomePage(user: snapshot.data!); // User is logged in
          } else {
            return const LoginPage(); // User is not logged in
          }
        }
      },
    );
  }
}
