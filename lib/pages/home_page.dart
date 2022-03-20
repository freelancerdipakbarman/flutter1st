import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
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
          child: Text("Hello world $days"),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}