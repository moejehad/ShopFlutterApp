import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  List imagePath = [
    "images/1.png",
    "images/2.png",
    "images/3.png",
    "images/4.png",
    "images/5.png",
    "images/6.png",
    "images/7.png",
    "images/8.png",
    "images/9.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Search')),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text('Likes'))
          ]),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(color: Color.fromARGB(250, 250, 250, 250)),
        child: ListView(
          children: <Widget>[
            Container(
              width: 290,
              height: 60,
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.only(right: 30, left: 30, bottom: 5),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1.0, color: Color(0xffECECEC))),
              ),
              child: Row(
                children: <Widget>[
                  Opacity(
                    opacity: 1,
                    child: Text(
                      'STYLISH',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 20,
                    height: 17,
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.shopping_cart),
                  ),
                  Container(
                    width: 20,
                    height: 17,
                    child: Icon(Icons.menu),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 30, top: 20, right: 30),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imagePath[3]),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10000)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 20),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '1,252',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      'Posts',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 20, left: 20),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '4m',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      'followers',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 20, left: 20),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '256',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      'following',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 220,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade100,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: OutlineButton(
                            onPressed: () {},
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color(0xff606060)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 30, left: 30, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Home Furniture',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      'Home accessories, some information about us',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      'Contact us:',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      '+925 987 952 2365',
                      style: TextStyle(
                          color: Colors.blue.shade500,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'Chennai, India',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: 300,
              margin: EdgeInsets.only(right: 30, left: 30),
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1.0, color: Color(0xffECECEC))),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        child: RaisedButton(
                      color: Colors.blueGrey.shade50,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      child: Text(
                        'Add Product',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xff606060)),
                      ),
                      onPressed: () {},
                    )),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: RaisedButton(
                          color: Colors.blueGrey.shade50,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            'Share',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xff606060)),
                          ),
                          onPressed: () {},
                        )),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: RaisedButton(
                          color: Colors.blueGrey.shade50,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            'Contact Us',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xff606060)),
                          ),
                          onPressed: () {},
                        )),
                  ],
                ),
              ),
            ),


            Container(
              margin: EdgeInsets.only(top: 20,right: 30,left: 30,bottom: 30),
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 3,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  for(var i = 0 ; i < imagePath.length;i++)
                    Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("${imagePath[i]}"),
                        )
                      ),
                    )
                ],

              ),
            ),


          ],
        ),
      ),
    );
  }
}
