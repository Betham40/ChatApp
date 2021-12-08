import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page", style: TextStyle(
          color: Colors.deepPurpleAccent, fontSize: 20, 
        ),
        ),
        actions: [Icon(Icons.filter_list, color: Colors.deepPurpleAccent,),
        Icon(Icons.share, color: Colors.deepPurpleAccent,)
        ],
      ),
      body: ListView(
        children:const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top:15.0),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1541562232579-512a21360020?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bmFydXRvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}