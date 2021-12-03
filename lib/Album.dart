import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final String albumUrl;
  AlbumCard({this.albumUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(albumUrl), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
