import 'package:flutter/material.dart';




class MenuDashboardPage extends StatefulWidget {
  @override
  _MenuDashboardPageState createState() => _MenuDashboardPageState();
}
class _MenuDashboardPageState extends State<MenuDashboardPage> with SingleTickerProviderStateMixin {
  List<DropdownMenuItem<int>> listDrop = [];

  void loadData(){
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: new Text("Grade XI"),
      
      value: 1,
    ),
    );

   listDrop.add(new DropdownMenuItem(
      child: new Text("Grade XII"),
      value: 2,
    ),
    );

   listDrop.add(new DropdownMenuItem(
      child: new Text("BCS-IT"),
      value: 3,
    ),
    );

    listDrop.add(new DropdownMenuItem(
      child: new Text("About Us"),
      value: 4,
    ),
    );

    listDrop.add(new DropdownMenuItem(
      child: new Text("Contact Us"),
      value: 5,
    ),
    );

    listDrop.add(new DropdownMenuItem(
      child: new Text("Terms & Policies"),
      value: 6,
    ),
    );

    listDrop.add(new DropdownMenuItem(
      child: new Text("Feedbacks"),
      value: 7,
    ),
    );


  }
   @override
  Widget build(BuildContext context) {
    loadData();
   return new MaterialApp(
     home: new Scaffold(
     appBar: new AppBar(
       title: new Text("DropDown"),
     ),
     body: new Container(
    
       child: new Center(
         
         child: DropdownButton(
           
           icon: Icon(Icons.arrow_drop_down),

           iconEnabledColor: Colors.red,
            
           style: TextStyle(
             backgroundColor: Colors.green,
             fontStyle: FontStyle.normal,
             fontSize: 30.0,
             ),
           iconSize: 90.0,
           items: listDrop,
           onChanged: (value) => print("You selected : $value"),
           ),
          
       ),
     ),
   ),
   );
  }
}
