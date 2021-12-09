import 'package:flutter/material.dart';

class CreateTodo extends StatelessWidget {
  const CreateTodo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: const Text("Create To-do"),
     ), 
     body: ListView(
      children:[ TextFormField(
       decoration: const InputDecoration(label: Text("Title"),
       ),
     ),
     const SizedBox(
       height: 100,
     ),
     TextFormField(
       decoration: const InputDecoration(label: Padding(
         padding: EdgeInsets.only(bottom: 100),
         child: Text("Description"),
       ),
       ),
     ),
      Row(
        children: [
          Expanded(
            child: TextFormField(
                 decoration: const InputDecoration(label: Text("Start Date"),
                 ),
               ),
          ),
        const SizedBox(width: 10,),
     Expanded(
       child: TextFormField(
         decoration: const InputDecoration(label: Text("End Date")),
         ),
       ),]
     ),
     const SizedBox(
       height: 30,
     ),
     Padding(
       padding: const EdgeInsets.only(top:10, left: 100, right: 100),
       child: TextButton(onPressed: () {}, child: const Text("Create", style:  TextStyle(color: Colors.white, fontSize: 20,)
       ),
       style: TextButton.styleFrom(backgroundColor: Colors.blue),),
     )
        ],
      ),
      
      );
    
  }
}