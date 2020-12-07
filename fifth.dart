import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_alpha/second.dart';
import 'third.dart';

void main() {
  runApp(MaterialApp(
    home: Bed_Room(),
    debugShowCheckedModeBanner: false,
  ));
}

// ignore: camel_case_types
class Bed_Room extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff053742),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
                width: double.infinity,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                      20,
                                      25,
                                      20,
                                      0,
                                    ),
                                    decoration: BoxDecoration(
                                        // border: Border.all(color: Colors.green)
                                        ),
                                    height: 120,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 100,
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'images/Icon ionic-md-arrow-round-back.png',
                                                width: 40.0,
                                              ),
                                              Text(
                                                'Bed',
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text('Room',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700)),
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          child: Text(
                                            '4 Lights',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.yellow,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        // border: Border.all(color: Colors.blue)
                                        ),
                                    height: 150,
                                    width: 250,
                                    child: Image(
                                      image: AssetImage(
                                          'images/vintage-hanging-lamp-2.jpg'),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            // Listview1()
                            // Listview1()
                            CategoriesScroller()

                            // Container(
                            //   margin: EdgeInsets.only(left: 20),
                            //   decoration: BoxDecoration(
                            //       border: Border.all(color: Colors.deepPurple)),
                            //   height: 90,

                            // )
                          ],
                        ),
                      ),
                      Container(
                        height: 560,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                            color: Colors.grey[100]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                15,
                                30,
                                0,
                                0,
                              ),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Intensity',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                  15,
                                  30,
                                  0,
                                  0,
                                ),
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'images/solution.png',
                                      width: 25,
                                      height: 40,
                                    ),
                                    Container(
                                        width: 300, child: IntensitySlider()),
                                    Image.asset(
                                      'images/solution-1.png',
                                      width: 30,
                                      height: 40,
                                    )
                                  ],
                                )),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                15,
                                30,
                                0,
                                0,
                              ),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Colors',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                10,
                                20,
                                0,
                                0,
                              ),
                              alignment: Alignment.topLeft,
                              child: ColourSelect(),
                            ),
                            HLScenes(),
                            Scenes(),
                          ],
                        ),
                      ),
                      NavigationBar(),
                    ],
                  ),
                )),
          ),
          Positioned(
            right: 40,
            top: 225,
            child: Column(
              children: [
                Container(
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xFFFFFF)),
                    child: Image.asset('images/Icon awesome-power-off.png'))
              ],
            ),
          )
        ],
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

class Listview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 20.0,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            width: 60.0,
            color: Colors.red,
          ),
          Container(
            // height: 50,
            width: 60.0,
            color: Colors.blue,
          ),
          Container(
            width: 60.0,
            color: Colors.green,
          ),
          Container(
            width: 60.0,
            color: Colors.yellow,
          ),
          Container(
            width: 60.0,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}

class IntensitySlider extends StatefulWidget {
  @override
  _IntensitySliderState createState() => _IntensitySliderState();
}

class _IntensitySliderState extends State<IntensitySlider> {
  // static double _lowerValue = 1.0;
  // static double _upperValue = 10.0;
  double intensity = 0.0;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
          // valueIndicatorColor: Colors.brown,
          // thumbColor: Colors.blue,
          // overlayColor: Colors.blue,
          // activeTrackColor: Colors.black
          // overlappingShapeStrokeColor: Colors.green
          // thumbColor: Colors.blue
          // valueIndicatorColor: Colors.deepOrange
          trackHeight: 1),
      child: Slider(
        activeColor: Colors.orange,
        inactiveColor: Colors.grey,
        divisions: 6,
        // label: intensity.abs().toString(),
        // min: _lowerValue,
        // max: _upperValue,
        value: intensity,
        onChanged: (val) {
          print(val);
          setState(() {
            intensity = val;
          });
        },
      ),
    );
  }
}

class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 65,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                splashColor: Colors.amber,
                color: Colors.white,
                child: Container(
                  height: 70,
                  width: 120,
                  // margin: EdgeInsets.symmetric(vertical/: 25),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/surface2.png',
                        width: 30,
                      ),
                      Text(
                        'Main Light',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(497, 7, 153, 84),
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                splashColor: Colors.amber,
                color: Colors.green[300],
                child: Container(
                  color: Colors.green[300],
                  height: 70,
                  width: 120,
                  // margin: EdgeInsets.symmetric(vertical/: 25),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/furniture-and-household.png',
                        width: 30,
                      ),
                      Text(
                        'Desk Light',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff053742),
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                splashColor: Colors.amber,
                color: Colors.white,
                child: Container(
                  height: 70,
                  width: 120,
                  // margin: EdgeInsets.symmetric(vertical/: 25),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/bed (1).png',
                        width: 30,
                      ),
                      Text(
                        'bedroom',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff053742),
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HLScenes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        15,
        30,
        0,
        0,
      ),
      alignment: Alignment.topLeft,
      child: Text(
        'Scenes',
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class ColourSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: Colors.pink[100]
                // (0xFFB6C1),
                ),
            
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: Colors.green[100]
                // (0x90EE90),
                ),
          ),
          Container(
            width: 35,
            height: 35,
            // color: Color(0x87CEFA),

            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: Colors.blueAccent[100]),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: Colors.purple[100]
                // color: Color(0x8A2BE2),
                ),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: Colors.purple[300],
            ),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: Colors.brown[200],
            ),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white24,
            ),
            child: Center(
              child: Image.asset('images/+.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class Scenes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
      child: Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 15, 15, 0),
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              splashColor: Colors.amber,
              color: Colors.pink[200],
              child: Container(
                
                height: 70,
                width: 150,
                // margin: EdgeInsets.symmetric(vertical/: 25),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'images/surface1.png',
                      ),
                    ),
                    Text(
                      'Birthdays',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    )
                    ,
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              splashColor: Colors.amber,
              color: Colors.purple[200],
              child: Container(
                height: 70,
                width: 150,
                // margin: EdgeInsets.symmetric(vertical/: 25),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'images/surface1.png',
                      ),
                    ),
                    Text(
                      'Party',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 15, 15, 0),
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              splashColor: Colors.amber,
              color: Colors.blue[200],
              child: Container(
                height: 70,
                width: 150,
                // margin: EdgeInsets.symmetric(vertical/: 25),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'images/surface1.png',
                      ),
                    ),
                    Text(
                      'Relax',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              splashColor: Colors.amber,
              color: Colors.green[200],
              child: Container(
                height: 70,
                width: 150,
                // margin: EdgeInsets.symmetric(vertical/: 25),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'images/surface1.png',
                      ),
                    ),
                    Text(
                      'Fun',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
