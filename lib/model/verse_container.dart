import 'package:flutter/material.dart';

class QuranVerseContainer extends StatelessWidget {
  final List<String> verses; // List of Quranic verses to display

  QuranVerseContainer({required this.verses});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 255, 147, 7)),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display each verse as a separate Text widget
          for (String verse in verses)
            Text(
            textAlign: TextAlign.right,
              verse,
              style: TextStyle(fontSize: 16.0,color:  Color.fromARGB(255, 255, 147, 7)),
            ),
        ],
      ),
    );
  }
}
