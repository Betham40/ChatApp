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
      home: const MyTo_doApp(),
    );
  }
}

// ignore: camel_case_types
class MyTo_doApp extends StatelessWidget {
  const MyTo_doApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: null,
      child: Icon(Icons.add,
      size: 40,
      ),
      ),
      backgroundColor:Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Center(
          child: const CircleAvatar(
            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1633113215883-a43e36bc6178?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60"),
            ),
        ),
          title: Text("My Task", style:TextStyle(color:Colors.indigo.shade900,),),
          actions:  [
            Icon(Icons.filter_list, color:Colors.indigo.shade900,),
            Icon(Icons.search, color:Colors.indigo.shade900,) 
          ],
      ),
      body: Column(
        children: [
          TodoWidget(
            todo: "The family's trip to Finland next summer", 
            time: 'yestaday', 
            task: 'Plan the trip to Finland', 
            color: Colors.purpleAccent, 
          icon: Icons.notifications,),
          TodoWidget(todo: "", 
            time: 'Today 11:00', 
            task: "Plan Susan's birthday", 
            color: Colors.blue, 
          icon: Icons.notifications_outlined,),
          TodoWidget(
            todo: "Get tomatoes, lettuce, potatoes, green beans, cream and beef fillet. Also buy red wine at John's Wine Shop", 
            time: 'Today 15:00', 
            task: 'Groceries for dinner', 
            color: Colors.blue,
          icon: Icons.notifications_outlined,
          ),
          TodoWidget(
            todo: "Send the presentation to Bill", 
            time: 'Tomorrow', 
            task: 'Port projects', 
            color: Colors.grey, 
          icon: Icons.notifications_outlined,
          ),
          TodoWidget(
            todo: "", 
            time: 'Fri 30, Oct', 
            task: 'Take jacket for cleaning', 
            color: Colors.grey, 
          icon: Icons.notifications_outlined,
          ),
          TodoWidget(
            todo: "Install the latest update and check wireless connection", 
            time: '', 
            task: "Fix dad's PC", 
            color: Colors.grey, 
          icon: Icons.notifications_outlined,),
          TodoWidget(
            todo: "Talk to Monica about this trip", 
            time: '', 
            task: "Trip to Stockholm", 
            color: Colors.grey, 
          icon: Icons.notifications_outlined,
          ),
        ],
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  const TodoWidget({
    Key? key, required this.task, required this.todo, required this.time, required this.color, required this.icon,
  }) : super(key: key);
  final String task;
  final String todo;
  final String time;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      color: Colors.white
      ,
      child: Padding(
        padding: EdgeInsets.only(top:8.0),
        child: ListTile(
          leading: Icon(Icons.check_circle_outline, color:color,size: 29, ),
          title: Text(task, style: TextStyle(color: Colors.indigo, fontSize: 15, fontWeight: FontWeight.bold)
          ),
          subtitle: Text( todo, maxLines: 3,overflow: TextOverflow.ellipsis,
          style: TextStyle(color: color, fontSize: 10,),
          ),
          trailing: Padding(padding: const EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Icon(icon, size: 15, color: color,),
              Text(time, style: TextStyle(color: color,fontSize: 10,),
              )],
          ),
          ),

          
        ),
        ),
    );
  }
}