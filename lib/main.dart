import 'package:flutter/material.dart';
import 'package:sih_women_safety/drawer.dart';
void main() async {

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: const Color.fromARGB(255, 252, 2, 2),
            title: const Text("Women Safety",style: TextStyle(color: Colors.white,fontSize: 30),),
            actions: [
              //const Icon(Icons.search,size: 30,color: Colors.white,),
              IconButton(icon:const Icon((Icons.notifications),color: Colors.white,size: 30,),onPressed: () {  },),
            ],
            
          ),
          drawer:  main_drawer(),
        ),
    );
  }
}
