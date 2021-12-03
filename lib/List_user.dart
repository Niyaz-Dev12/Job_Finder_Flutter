import 'package:flutter/material.dart';
import 'package:flutter_app2/user-card.dart';

class ListUsers extends StatelessWidget {
  final String title;
  final List<UserCard> card;
  ListUsers({this.title, this.card});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'More',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 170,
            child: ListView.builder(
              itemCount: card.length,
              itemBuilder: (context, i) {
                return card[i];
              },
              padding: EdgeInsets.only(left: 16),
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
