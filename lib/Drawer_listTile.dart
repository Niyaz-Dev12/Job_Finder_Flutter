import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap) {}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 5),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.grey[350],
        child: Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[200]))),
          height: 50.0,
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.blue[900],
              ),
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
