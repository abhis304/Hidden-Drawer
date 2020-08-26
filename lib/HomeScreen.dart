import 'package:flutter/material.dart';
import 'package:hideden_drawer_flutter/configuration.dart';
import 'package:hideden_drawer_flutter/navigation_bloc.dart';
import 'package:hideden_drawer_flutter/screen2.dart';

class HomeScreen extends StatefulWidget with NavigationState{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0.0;
  double yOffset = 0.0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isDrawerOpen ? 40.0 : 0.0),
        color: Colors.grey[200],
      ),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0.0),
      duration: Duration(milliseconds: 250),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  isDrawerOpen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(() {
                              xOffset = 0.0;
                              yOffset = 0.0;
                              scaleFactor = 1;
                              isDrawerOpen = false;
                            });
                          })
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xOffset = 180.0;
                              yOffset = 150.0;
                              scaleFactor = 0.6;
                              isDrawerOpen = true;
                            });
                          },
                        ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Location',
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: primaryGreen,
                          ),
                          Text('INDIA'),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.search,
                  ),
                  Text('Search pet to adopt'),
                  Icon(
                    Icons.settings,
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catagories.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: shadowList,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            catagories[index]['iconPath'],
                            height: 50,
                            width: 50,
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(
                          catagories[index]['name'],
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: shadowList,
                          ),
                          margin: EdgeInsets.only(top: 50.0),
                        ),
                        Align(
                          child: Hero(
                            child: Image.asset('images/pet-cat2.png'),
                            tag: 1,
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(top: 60.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 7.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Sola'),
                                IconButton(
                                    icon: Icon(Icons.vpn_key), onPressed: null),
                              ],
                            ),
                            SizedBox(
                              height: 7.0,
                            ),
                            Text(
                              'American Crocodial',
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(Icons.location_on),
                                    onPressed: null),
                                Text('Mumbai'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Container(
              height: 240,
              margin: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: shadowList,
                        ),
                        margin: EdgeInsets.only(top: 50.0),
                      ),
                      Align(
                        child: Image.asset('images/pet-cat1.png'),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(top: 60.0, bottom: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: shadowList,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 7.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Sola'),
                              IconButton(
                                  icon: Icon(Icons.vpn_key), onPressed: null),
                            ],
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            'American Crocodial',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.location_on),
                                  onPressed: null),
                              Text('Surat'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
