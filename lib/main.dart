import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'HPButtons.dart';

void main()=>runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: Container(width:300.0,height: 100.0,child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Hi, 'Welcome Back' ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0,color: Colors.black54),),

                  ),),

                ),SizedBox(width: 8,),
                Container(
                  child: IconButton(icon: Icon(Icons.list,color: Colors.purple.shade300,size: 50,),onPressed: (){},),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.purple.shade50,),
                child: Column(children: <Widget>[
                  TextField(   style: TextStyle(backgroundColor: Colors.white,
                      fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
                    decoration: new InputDecoration(// re shape

                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding:
                      EdgeInsets.only(left: 50, bottom: 11, top: 11, right: 15),
                      hintText: 'Search Your Files',
                      hintStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,backgroundColor: Colors.white,),
                    ),),
                  Divider(height: 3,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('upgrade now for more than 2 tb of space and keep it this way for a year,',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: RaisedButton(onPressed: (){},child: Text("Find Out More"),),
                  )
                ],),
              ),
            ),
            Container(child: Row(children: <Widget>[],),),
            Container(child: Column(
              children: <Widget>[Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('Quick Access',textAlign: TextAlign.start,style: TextStyle(fontSize: 25),),

                  ),
                ],
              ),Row(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text('Uploading',textAlign: TextAlign.start,style: TextStyle(fontSize: 15),),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Shared ',textAlign: TextAlign.start,style: TextStyle(fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Starred',textAlign: TextAlign.start,style: TextStyle(fontSize: 15),),
                ),
              ],)
              ],

            ),)
          ],
        ),
        bottomNavigationBar: HPBottomAppBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: HPFloatingAction() ,
      ),
    );
  }
}

