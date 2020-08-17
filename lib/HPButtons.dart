import 'package:flutter/material.dart';
import 'main.dart';
class HPBottomAppBar extends StatefulWidget {
  @override
  _HPBottomAppBarState createState() => _HPBottomAppBarState();
}

class _HPBottomAppBarState extends State<HPBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      //todo make it look better
      shape: CircularNotchedRectangle(),notchMargin: 8,color: Colors.purple.shade100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            //todo create sharing path to an existing fb profile
            //todo link it to fb
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.history),
              onPressed: () {},
            ),

            SizedBox(width: 3,),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.star),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }}
class HPFloatingAction extends StatefulWidget {
  @override
  _HPFloatingActionState createState() => _HPFloatingActionState();
}

class _HPFloatingActionState extends State<HPFloatingAction> {


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(tooltip: ('New Todo Tile '),
      autofocus: true,
      focusColor: Colors.purple.shade100,
      hoverColor: Colors.purple.shade100,
      backgroundColor: Colors.purple.shade100,
      onPressed: (){},
      child: Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}