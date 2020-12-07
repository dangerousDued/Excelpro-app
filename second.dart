import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fourth.dart';

void main() {
  runApp(MaterialApp(
    home: Picker(),
    debugShowCheckedModeBanner: false,
  ));
}
class Picker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff053742),
      body: SingleChildScrollView(
              child: Container(
          alignment: Alignment.center,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.blue),
                        ),
                    child: Column(
                      children: [
                        Image.asset(
                          'images/Mask Group -1.png',
                          width: double.infinity,
                          // height: 320.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    child: Container(
                      padding: EdgeInsets.only(left: 35, bottom: 45),
                      child: Text(
                        'Create New Account',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                // border: Border.all(color: Colors.limeAccent),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.white,
                    ),
                    child: Container(
height: 500,
                      margin: EdgeInsets.fromLTRB(30, 50, 30, 0),
                      child: Column(
                        
                        children: [
                          TextField(
                            maxLength: 25,
                            decoration: InputDecoration(
                                hintText: "Username",
                                icon: Icon(Icons.person_outline),
                                border: OutlineInputBorder(),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Passward",
                                  icon: Icon(Icons.lock_outline_sharp),
                                  border: OutlineInputBorder(),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  icon: Icon(Icons.email_outlined),
                                  border: OutlineInputBorder(),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 55),
                            child: Row(
                              children: [
                                Checkbox(value: false, onChanged: null),
                                Text("I have accepted the Terms & Condition"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 45),
                            child: Column(
                              children: [
                                RaisedButton(
                                  splashColor: Colors.lightBlue,
                                  onPressed: () {
                                    
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => GridViewQ()
                              ));
                                  },
                                  color: Colors.green[300],
                                  child: Text(
                                    "Sign Up",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
