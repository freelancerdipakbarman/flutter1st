import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String uname = "";
  bool changeButton = false;
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
            Text('wellcome $uname',
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
                 onChanged:(value){                  
                  uname=value;
                  setState(() {});
                },
              ),
               TextFormField(
                 obscureText: true,
                decoration: InputDecoration(
                  hintText: "User Password",labelText: "User Password"
                  ),
               
              ),
                SizedBox(
              height: 40.0,            
            ),
            InkWell(
              onTap: ()async{                
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context,Myroutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeButton ? 50 : 150,
                height: 40,
                alignment:Alignment.center,              
                child:changeButton ? Icon(Icons.done,color: Colors.white,): Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  // shape: changeButton ? BoxShape.circle ? BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8)
                ),
              ),
            )
              // ElevatedButton(
              //   onPressed:(){
              //     Navigator.pushNamed(context,Myroutes.homeRoute);
              //   }, child: Text("Login"),style: TextButton.styleFrom(minimumSize: Size(150, 50)),
              // ),
              ],
            ),
          )
          ],
        ),
      )  
    );
  }
}