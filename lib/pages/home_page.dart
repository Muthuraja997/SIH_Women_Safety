import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sih_women_safety/drawer.dart';

class HomePage extends StatelessWidget {
  final User user;
  const HomePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 252, 2, 2),
        title: const Text(
          "Women Safety",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        actions: [
          IconButton(
            icon: const Icon((Icons.notifications),
                color: Colors.white, size: 30),
            onPressed: () {},
          ),
        ],
      ),
      drawer: mainDrawer(),

      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('welcome, ${user.email}'),
          ElevatedButton(
            onPressed:() async{
              await FirebaseAuth.instance.signOut();
            }, 
            child: const Text("Sign Out"),
            )
        ],
      )), // Call the drawer from drawer.dart
    );
  }
}
