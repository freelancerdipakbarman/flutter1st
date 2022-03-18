import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days =30;
    return Scaffold(
      appBar:AppBar(
        title: Text('Category'),
      ),
        body:Center(
          child:Container(
          child: Text("Helo wrld $days"),
          ),
        ),
        drawer: Drawer(),
      );
  }
}