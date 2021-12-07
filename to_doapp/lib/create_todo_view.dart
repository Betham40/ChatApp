import 'package:flutter/material.dart';

class CreateTodo extends StatelessWidget {
  const CreateTodo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Create To-do"),
     ), 
     body: ListView(
      children:[ TextFormField(
       decoration: const InputDecoration(label: Text("Title"),
       ),
     ),
     SizedBox(
       height: 100,
     ),
     TextFormField(
       decoration: const InputDecoration(label: Padding(
         padding: EdgeInsets.only(bottom: 165.0),
         child: Text("Description"),
       ),
       ),
     ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
       decoration: const InputDecoration(label: Text("Start Date"),
       ),
     ),
          ),
          SizedBox(height: 90,),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Expanded(
         child: TextFormField(
           decoration: const InputDecoration(label: Text("End Date")),
           ),
         ),
       ),]
     ),
        ],
      ),
      );
    
  }
}