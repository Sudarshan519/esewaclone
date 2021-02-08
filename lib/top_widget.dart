import 'package:esewaui/constant.dart';
import 'package:esewaui/login.dart';
import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  final String title;
  TopWidget(this.title);
  List request = ['Tow Servie', 'Mechanic\n Assistance', 'Police', 'Ambulance'];
  List icon = [
    Icons.wrong_location_outlined,
    Icons.person_add,
    Icons.local_police,
    Icons.local_hospital
  ];
  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(
      duration: Duration(minutes: 2),
      content: Container(
        height: 400,
        color: Colors.blue,
        child: Text('Botom'),
      ),
      action: SnackBarAction(label: 'Ske', onPressed: () {}),
    );
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 30),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person_outlined,
                  size: 40,
                  color: Colors.green,
                ),
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return LoginPage();
                  }));
                },
                child: Text(title,
                    style: kSubTextStyle.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                    )),
              ),
              Spacer(),
              IconButton(
                  icon: Icon(Icons.search, size: 30, color: Colors.white),
                  onPressed: () {
                  //  showSearch(context: context, delegate: FoodItemSearch());
                  }),
              IconButton(
                  icon: Icon(Icons.more_vert, size: 30, color: Colors.white),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(
                                20,
                              )),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.live_help,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      SizedBox(width: 20),
                                      const Text(
                                        'Help',
                                         style: TextStyle(
                                            color: Color(0xFF616161), fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.settings,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      SizedBox(width: 20),
                                      const Text(
                                        'Settings',
                                        style: TextStyle(
                                            color: Color(0xFF616161), fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                // ElevatedButton(
                                //   child: const Text('Close BottomSheet'),
                                //   onPressed: () => Navigator.pop(context),
                                // )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                    //      Scaffold.of(context).showSnackBar(snackBar);
                  }),
              PopupMenuButton(
                  color: Colors.white,
                  itemBuilder: (_) => [
                        PopupMenuItem(
                            value: 'settings', child: Text('Settings')),
                        PopupMenuItem(
                            value: 'settings', child: Text('Contact us')),
                        PopupMenuItem(value: 'settings', child: Text('About ')),
                        PopupMenuItem(value: 'settings', child: Text('Help'))
                      ])
            ],
          ),
        ),
        Positioned(
            bottom: -30,
            left: 20,
            right: 20,
            child: Container(
                height: 65,
                width: 400,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 30,
                        color: kShadowColor,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (int i = 0; i < 4; i++)
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  )),
                              child: Icon(icon[i], color: Colors.grey)),
                          Text(
                            request[1],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          )
                        ],
                      ),
                  ],
                )))
      ],
    );
  }
}
