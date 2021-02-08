import 'package:esewaui/constant.dart';
import 'package:esewaui/top_widget.dart';
import 'package:flutter/material.dart';

class PageBody extends StatelessWidget {
  final List<String> servicesname = [
    "Wheel Service",
    "CarOil Service",
    "Mirror Service",
    "Engine Service",
    "Brake Service",
    "Gas Service",
  ];
  final List<String> imagesrc = [
    "assets/wheel.jpg",
    "assets/caroil.jpg",
    "assets/mirrorservice.jpg",
    "assets/service3.jpg",
    "assets/brakeservice.jpg",
    "assets/oilservice.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopWidget('Login/Register'),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 178,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient:
                  LinearGradient(colors: [Colors.deepPurple, Colors.indigo]),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 30,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Center(
                child: Text(
              '20% Cash Back\non mirror Service',
              style: TextStyle(color: Colors.white, fontSize: 24),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 30,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Services",
                  style: kTitleTextstyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * .2,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,

                        //  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        //   crossAxisCount: 4),
                        itemCount: servicesname.length,
                        itemBuilder: (_, i) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                
                                 
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blueGrey.withOpacity(.4),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          imagesrc[i],
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 4),
                                          blurRadius: 30,
                                          color: kShadowColor,
                                        ),
                                      ],
                                    ),
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ),
                              Text(
                                servicesname[i],
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          );
                        }))
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            padding: EdgeInsets.all(20),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 30,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Account",
                  style: kTitleTextstyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.warning_amber_rounded,
                              size: 80,
                              color: Colors.grey,
                            )),
                        Text(
                          'Alerts',
                          style: kSubTextStyle,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.warning_amber_rounded,
                              size: 80,
                              color: Colors.grey,
                            )),
                        Text(
                          'Alerts',
                          style: kSubTextStyle,
                        )
                      ],
                    ),
                   Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.warning_amber_rounded,
                              size: 80,
                              color: Colors.grey,
                            )),
                        Text(
                          'Alerts',
                          style: kSubTextStyle,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              padding: EdgeInsets.all(20),
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 30,
                    color: kShadowColor,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Other Payments",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MasterCard(),
                        MasterCard(),
                        MasterCard(),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ],
    );
  }
}

class MasterCard extends StatelessWidget {
  const MasterCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blueGrey.withOpacity(.4),
        image: DecorationImage(
          image: AssetImage("assets/d.jpg"),
          fit: BoxFit.fill,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 30,
            color: kShadowColor,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
              left: 20,
              top: 20,
              child: Text('Master Card',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ))),
          Positioned(
              left: 20,
              bottom: 40,
              child: Text('2020 / 22',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ))),
          Positioned(
              bottom: 10,
              left: 20,
              child: Text(
                '9  0  8  8  7  * * * * *  *',
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
