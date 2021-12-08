import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(54, 94, 86, 1),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color greenColor = const Color.fromRGBO(54, 94, 86, 1);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        
      ),
       body: Column(
         children: [
           ListTile(leading: const CircleAvatar(
             radius: 30,
             backgroundImage: AssetImage("assets/images/profile.jpg"),
           ),
           title: const Text("Joana"),
           subtitle: Row(children: const [Icon(Icons.done_all), SizedBox(width: 10,), Text("Electrician at your service")],
           ),
           trailing: Column(
             children: const [Text("5:30"), Icon(Icons.notifications),],
           ),

           )
         ],
    ));
  }
   
    
}