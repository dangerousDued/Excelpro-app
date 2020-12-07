import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fifth.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridViewQ(),
  ));
}

class GridViewQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff053742),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                      0,
                      40,
                      0,
                      40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Control',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'Panel',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [Image.asset('images/user.png')],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[Secondp(), NavigationBar()],
            )
          ],
        ),
      ),
    );
  }
}

class Secondp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.grey[100],
        ),
        height: 645,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                height: 30,
                child: Text('All Rooms',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              Container(
                  height: 600,
                  color: Colors.grey[100],
                  child: GridView.extent(
                    primary: false,
                    padding: const EdgeInsets.all(8),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    maxCrossAxisExtent: 200.0,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Bed_Room()
                              ));
                                  },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        splashColor: Colors.cyanAccent,
                        color: Colors.white,
                        child: Container(
                          height: 250,
                          width: 300,
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.only(
                          //         topLeft: Radius.circular(20))),
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: Image.asset(
                                  'images/bed.png',
                                ),
                              ),
                              Text('Bed Room',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text(
                                '4 lights',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                              )
                            ],
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        splashColor: Colors.cyanAccent,
                        color: Colors.white,
                        child: Container(
                          height: 250,
                          padding: EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: Image.asset(
                                  'images/room.png',
                                ),
                              ),
                              Text('Living Room',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text('2 lights',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange))
                            ],
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        splashColor: Colors.cyanAccent,
                        color: Colors.white,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                                child: Image.asset('images/kitchen.png'),
                              ),
                              Text('Kitchen',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text('5 lights',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange))
                            ],
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        splashColor: Colors.cyanAccent,
                        color: Colors.white,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                                child: Image.asset('images/bathtube.png'),
                              ),
                              Text('Bathroom',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text('1 lights',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange))
                            ],
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        splashColor: Colors.cyanAccent,
                        color: Colors.white,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                                child: Image.asset('images/house.png'),
                              ),
                              Text('Outdoor',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text('5 lights',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange))
                            ],
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        splashColor: Colors.cyanAccent,
                        color: Colors.white,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                                child: Image.asset('images/balcony.png'),
                              ),
                              Text('Balcony',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              Text('2 lights',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange))
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 40,
            width: 30,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: ExactAssetImage('images/bulb.png'),
            )),
          ),
          Container(
            height: 40,
            width: 30,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: ExactAssetImage('images/Icon feather-home.png'),
            )),
          ),
          Container(
            height: 40,
            width: 30,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: ExactAssetImage('images/Icon feather-settings.png'),
            )),
          )
        ],
      ),
    );
  }
}
