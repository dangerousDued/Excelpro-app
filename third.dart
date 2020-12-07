import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color(0xff053742),

    body: Container(child: Column(
      children: [
        Stack(
          children: [
            Container(
              // decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
            
              child: Column(

              children: [
                Image.asset('images/Mask_Group_1.png', width: double.infinity, 
                fit: BoxFit.cover,),
              ],
          ),
            ),
          ],         
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Container(
            child: Column(
              children: [
                Image.asset('images/Group 61.png'),
              ],
            ),
          ),
        ),
        Container(
          child: Column(

          children: [
            Text("Let's get you started", 
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),)
          ],
          ),
        )
      ],
    )),
    );
  }
}