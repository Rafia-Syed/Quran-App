import 'package:flutter/material.dart';
import 'package:quran_app/Model/surah.dart';
import 'package:quran_app/screens/list.dart';
import 'package:quran_app/screens/surah.dart';

class RowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Expanded(
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 61, 15, 70),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 38)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListQuran(),
                  ));
            },
            child: Text(
              "Para",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 61, 15, 70),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 38)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SurahList(),
                  ));
            },
            child: Text(
              "Surah",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
