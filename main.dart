

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignIn(),
  ));
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff053742),
      body: Container(
        // child: Container(
        //   // height: 450.0,
        //   // alignment: Alignment.bottomLeft,
        // decoration: BoxDecoration(
        // border: Border.all(color: Colors.blueAccent),
        //   ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.blueAccent),
                        ),
                    child: Column(
                      children: [
                        Image.asset(
                          'images/Mask_Group_1.png',
                          width: double.infinity,
                          height: 420.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    child: Container(
                      decoration: BoxDecoration(
                          // border: Border.all(color: Colors.deepOrange),
                          ),
                      child: Column(
                        children: [
                          Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'to Room Control',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 450,
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.limeAccent),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Username",
                            icon: Icon(Icons.person_outline),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Passward",
                                icon: Icon(Icons.lock_outline),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          RaisedButton(
                            splashColor: Colors.lightBlue,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Picker()
                              ));
                            },
                            color: Colors.green[300],
                            child: Text(
                              "LOGIN",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 31.5, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                                Text(
                                  "SignIn",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
