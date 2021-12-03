import 'package:flutter/material.dart';
import 'package:flutter_app2/List_user.dart';
import 'package:flutter_app2/user-card.dart';
import 'Drawer.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class HomePage extends StatefulWidget {
  String messageTitle = "Empty";
  String notificationAlert = "alert";
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, IconData> icons = {
    'Home': Icons.home,
    'Favorite': Icons.favorite,
    'NearBy': Icons.language,
    'Notifications': Icons.notifications
  };

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
              iconSize: 35,
            );
          }),
          title: Icon(
            Icons.location_on,
            size: 35,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                size: 35,
              ),
              onPressed: () {
                print('search');
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 140,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/workers.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(4),
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4),
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4),
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4),
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ListUsers(title: 'Features', card: [
              UserCard(
                  name: "John Wick",
                  number: "07507854321",
                  job: "Developer",
                  url: 'images/pic9.jpg',
                  albumUrl: 'images/pic9.jpg'),
              UserCard(
                  name: "Chris Heria",
                  number: "07501235566",
                  job: "Oil Engineer",
                  url: 'images/pic1.jpg',
                  albumUrl: 'images/pic1.jpg'),
              UserCard(
                name: "Rwaid Taha",
                number: "07506778899",
                job: "Programmer",
                url: 'images/pic2.jpg',
                albumUrl: 'images/pic2.jpg',
              ),
              UserCard(
                  name: "Steve Job",
                  number: "07509886754",
                  job: "Doctor",
                  url: 'images/pic3.jpeg',
                  albumUrl: 'images/pic3.jpeg'),
              UserCard(
                  name: "Elena Gilbert",
                  number: "07501224356",
                  job: "Nurse",
                  url: 'images/pic4.jpg',
                  albumUrl: 'images/pic4.jpg'),
            ]),
            Divider(),
            ListUsers(title: 'Best', card: [
              UserCard(
                  name: "Hakim Rasull",
                  number: "07504556789",
                  job: "Developer",
                  url: 'images/pic10.jpg',
                  albumUrl: 'images/pic10.jpg'),
              UserCard(
                  name: "Daniel Seth",
                  number: "07502234576",
                  job: "Oil Engineer",
                  url: 'images/pic23.jpg',
                  albumUrl: 'images/pic23.jpg'),
              UserCard(
                name: "Ben Martin",
                number: "07507765432",
                job: "Programmer",
                url: 'images/pic33.jpg',
                albumUrl: 'images/pic33.jpg',
              ),
              UserCard(
                  name: "Saul Nigez",
                  number: "07509886754",
                  job: "Doctor",
                  url: 'images/pic36.jpg',
                  albumUrl: 'images/pic36.jpg'),
              UserCard(
                  name: "Jack Gildart",
                  number: "07501224356",
                  job: "Swimmer",
                  url: 'images/pic7.jpg',
                  albumUrl: 'images/pic7.jpg'),
            ]),
            Divider(),
            ListUsers(title: 'New', card: [
              UserCard(
                  name: "Alber Mansur",
                  number: "07507854321",
                  job: "Developer",
                  url: 'images/pic14.jpg',
                  albumUrl: 'images/pic14.jpg'),
              UserCard(
                  name: "Saz Luke",
                  number: "07501235566",
                  job: "Oil Engineer",
                  url: 'images/pic19.jpg',
                  albumUrl: 'images/pic19.jpg'),
              UserCard(
                name: "Victoria Wick ",
                number: "07506778899",
                job: "Programmer",
                url: 'images/pic15.jpg',
                albumUrl: 'images/pic15.jpg',
              ),
              UserCard(
                  name: "Hussien Ali",
                  number: "07509886754",
                  job: "Doctor",
                  url: 'images/pic21.jpg',
                  albumUrl: 'images/pic21.jpg'),
              UserCard(
                  name: "Caroline Jhons",
                  number: "07501224356",
                  job: "Nurse",
                  url: 'images/pic18.jpg',
                  albumUrl: 'images/pic18.jpg'),
            ]),
          ],
        ),
        bottomNavigationBar: Stack(
          children: [
            Container(
              height: 85,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
            ),
            BottomNavigationBar(
              items: icons
                  .map(
                    (title, icon) => MapEntry(
                      title,
                      BottomNavigationBarItem(
                        label:
                            icons[title] == icons.values.toList()[currentIndex]
                                ? ''
                                : title,
                        icon: icons[title] ==
                                icons.values.toList()[currentIndex]
                            ? Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    transform:
                                        Matrix4.translationValues(0, -30, 0),
                                    padding: EdgeInsets.all(5),
                                    margin: EdgeInsets.only(bottom: 2),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[900],
                                      border: Border.all(
                                          width: 4, color: Colors.white),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      icon,
                                      size: 35,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Text(
                                      title,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Icon(icon, size: 30),
                              ),
                      ),
                    ),
                  )
                  .values
                  .toList(),
              selectedItemColor: Colors.white,
              currentIndex: 0,
              selectedFontSize: 14,
              unselectedItemColor: Colors.white,
              unselectedFontSize: 14,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              onTap: (num) {
                setState(() {
                  currentIndex = num;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
