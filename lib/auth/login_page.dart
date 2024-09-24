
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email=TextEditingController();
  final TextEditingController _password=TextEditingController();
  
  signInWithEmailAndPassword() async{
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email.text, password: _password.text);
    }on FirebaseAuthException catch (e){
      if(e.code=='user-not-found')
      {
        print('No User found');
      }else if(e.code=='Wrong-password'){
        print('Wrong password');
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 219, 59, 10),
        centerTitle: true,
        title: const Text(
          "Login Page",
          style: TextStyle(color:Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding:const EdgeInsets.only(top:60.0,left:15.0,right:15.0),
            child:Column(
              children: [
                 const Padding(
                   padding: EdgeInsets.only(left:1.0),
                   child: Padding(
                     padding: EdgeInsets.only(right: 300.0,bottom:10.0),
                     child: Text(
                                'Email Id', // Label Text
                                style: TextStyle(
                                  fontSize: 18.0, // Customize label size
                                  fontWeight: FontWeight.bold, // Make label bold
                                  color: Colors.black, // Label color
                                ),
                              ),
                   ),
                 ),
                TextField(
                  controller: _email,
                  
                  decoration: const InputDecoration(
                     border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  gapPadding: 6,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 199, 200, 201),
                                      width: 1.0),
                                ),
                                hintText: ' Emter your Email',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 120, 116, 116),
                                )),
                  ),
                  
                const Padding(
                  padding: EdgeInsets.only(top:20.0,right: 295.0,bottom:10.0),
                  child: Text(
                              'Password', // Label Text
                              style: TextStyle(
                                fontSize: 18.0, // Customize label size
                                fontWeight: FontWeight.bold, // Make label bold
                                color: Colors.black, // Label color
                              ),
                            ),
                ), 
                TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: const InputDecoration(
                     border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  gapPadding: 6,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 199, 200, 201),
                                      width: 1.0),
                                ),
                                hintText: ' Emter your Password',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 118, 113, 113),
                                )),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0,left:100.0,right: 100.0),
                  child: SizedBox(
                    width: double.infinity,
                    child:ElevatedButton(
                      onPressed:signInWithEmailAndPassword, 
                      child:const Text("Login"),
                      ),
                  ),
                )

              ],
            )
            )
        ],
      )
    );
  }
}