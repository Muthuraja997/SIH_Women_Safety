import 'package:flutter/material.dart';
import 'drawer.dart';
// import 'src/app.dart';
// import 'src/settings/settings_controller.dart';
// import 'src/settings/settings_service.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  // final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  //await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
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
            backgroundColor: Colors.red,
            title: const Text("Women Safety",style: TextStyle(color: Colors.white,fontSize: 30),),
            actions: [
              //const Icon(Icons.search,size: 30,color: Colors.white,),
              IconButton(icon:const Icon((Icons.notifications),color: Colors.white,size: 30,),onPressed: () {  },),
            ],
            
          ),
          drawer: const Drawer(),
        ),
    );
  }
}
