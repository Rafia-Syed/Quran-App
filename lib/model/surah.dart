import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

class SurahData extends StatelessWidget {
  int? surahnmbr;
  SurahData(this.surahnmbr);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          quran.basmala,
          style: TextStyle(
              color: Color.fromARGB(255, 255, 147, 7),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 61, 15, 70),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 61, 15, 70),
          height: size.height,
          width: size.width,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ListView.builder(
              itemCount: quran.getVerseCount(surahnmbr!),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    //quran.getVersesTextByPage(1,verseEndSymbol: true,customSurahSeperator: "") as String,
                    quran.getVerse(surahnmbr!, index + 1, verseEndSymbol: true),
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Color.fromARGB(255, 255, 147, 7)),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
