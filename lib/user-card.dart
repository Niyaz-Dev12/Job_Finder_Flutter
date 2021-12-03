import 'package:flutter/material.dart';
import 'info_page.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String number;
  final String job;
  final String url;
  final String albumUrl;

  UserCard({this.name, this.number, this.job, this.url, this.albumUrl});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // print("welcome $name");
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InfoPage(
                  name: name,
                  number: number,
                  job: job,
                  url: url,
                  albumUrl: albumUrl),
            ));
      },
      child: Container(
        margin: EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Container(
              height: 85,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                image: DecorationImage(
                  image: AssetImage(url),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              height: 75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    number,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    job,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
