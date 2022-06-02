import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controller.dart';

class HomePage extends StatefulWidget{
  
  @override
  State<HomePage> createState() {
   return HomePageState();
  }

}

class HomePageState extends State<HomePage>{
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.end,
        //scrollDirection:  Axis.horizontal,
        
        children: [
          Text("Contador: $counter"),
          Container(height:  10,),
          CustomSwitch(),
          Container(height:  50,),      
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              Padding(
            padding: const EdgeInsets.all(50.0),
           
            child: Container(
              
            child: Text("As 5 Linguagens do Amor"),
      
          ),
            ), 
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
            ],
          ),
      ],),
      ), 
        floatingActionButton: FloatingActionButton(
        child:  Icon(Icons.add),
        onPressed: (){
          setState(() {
              counter++;
          });
        },),
    );

  }

}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(value: AppController.instance.isDarkTheme, onChanged: (value){
        AppController.instance.changeTheme();
      },);
  }
}


