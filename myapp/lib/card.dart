import 'package:flutter/material.dart';

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
     body: ListView(
       children: [
         Card(
           clipBehavior: Clip.antiAlias,
           child: Column(
             children:[
               ListTile(
                 leading: Icon(Icons.arrow_drop_down_circle),
                 title: Text("Card title 1"),
                 subtitle: Text("Secondary text", style: TextStyle( color: Colors.black.withOpacity(0.6)),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(
                   'Bam Electrical is at your service',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                 ),
               ),
               ButtonBar(
                 alignment: MainAxisAlignment.start,
                 children: [
                   FlatButton(onPressed: () {}, child: Text('Action 1'),
                   ),
                   FlatButton(onPressed: () {}, child: Text('Action 2'),
                   ),
                 ],
                 ),
                 Image.network('https://images.unsplash.com/photo-1633114129669-78b1ff09902b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60')
             ]
           ),
         ),
         Card(
           clipBehavior: Clip.antiAlias,
           child: Column(
             children:[
               ListTile(
                 leading: Icon(Icons.arrow_drop_down_circle),
                 title: Text("Card title 1"),
                 subtitle: Text("Secondary text", style: TextStyle( color: Colors.black.withOpacity(0.6)),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(
                   'Bam Electrical is at your service',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                 ),
               ),
               ButtonBar(
                 alignment: MainAxisAlignment.start,
                 children: [
                   FlatButton(onPressed: () {}, child: Text('Action 1'),
                   ),
                   FlatButton(onPressed: () {}, child: Text('Action 2'),
                   ),
                 ],
                 ),
                 Image.network('https://images.unsplash.com/photo-1633114129669-78b1ff09902b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60')
             ]
           ),
         ),
        ] )
    );
     
  }
   
    
}