import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Material(  
      color: Color.fromRGBO(255, 255, 255, 1),
      child:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/1.png',width: 150,height: 150,fit:BoxFit.fill ),
            SizedBox(
              height: 20.0,            
            ),
            Text('wellcome',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 20.0,            
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal:32.0),
            child: Column(
              children: [
                  TextFormField(
                decoration: InputDecoration(hintText: "User Name",labelText: "User Name"),
              ),
               TextFormField(
                 obscureText: true,
                decoration: InputDecoration(hintText: "User Password",labelText: "User Password"),
              ),
                SizedBox(
              height: 40.0,            
            ),
              ElevatedButton(
                onPressed:(){
                  Navigator.pushNamed(context,Myroutes.homeRoute);
                }, child: Text("Login"),style: TextButton.styleFrom(minimumSize: Size(150, 50)),
              ),
              ],
            ),
          )
          ],
        ),
      )  
    );
  }
}