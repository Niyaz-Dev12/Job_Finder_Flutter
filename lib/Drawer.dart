import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app2/Drawer_listTile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 260,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue[900]),
                child: Column(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('images/me.jpg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Name: Niyaz Irfan Mustafa',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Number: 07506873454',
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        SizedBox(width: 2),
                        Text('Iraq/Erbil',
                            style: TextStyle(fontSize: 14, color: Colors.white))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CustomListTile(Icons.login, 'Log Out', () => {}),
            CustomListTile(Icons.group, 'About Us', () => {}),
            CustomListTile(Icons.person_pin_rounded, 'Contact Us', () => {}),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[900],
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(2, 0, 5, 5),
                            child: IconButton(
                              onPressed: () {
                                print('Facebook');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Colors.white,
                                size: 35.0,
                              ),
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[900],
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(2, 0, 3, 5),
                            child: IconButton(
                              onPressed: () {
                                print('Instagram');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.instagram,
                                color: Colors.white,
                                size: 35.0,
                              ),
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[900],
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(2, 0, 5, 5),
                            child: IconButton(
                              onPressed: () {
                                print('Snapchat');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.snapchat,
                                color: Colors.white,
                                size: 35.0,
                              ),
                            )),
                      ),
                    ],
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
