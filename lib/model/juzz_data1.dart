import 'package:flutter/material.dart';
import 'package:quran_app/model/verse_container.dart';
import 'package:quran/quran.dart' as quran;

class JuzzData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> versesPage1 = quran.getVersesTextByPage(1,
        verseEndSymbol: true,
        customSurahSeperator: ""); // Replace with actual page number
    List<String> versesPage2 = quran.getVersesTextByPage(2,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage3 = quran.getVersesTextByPage(3,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage4 = quran.getVersesTextByPage(4,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage5 = quran.getVersesTextByPage(5,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage6 = quran.getVersesTextByPage(6,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage7 = quran.getVersesTextByPage(7,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage8 = quran.getVersesTextByPage(8,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage9 = quran.getVersesTextByPage(9,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage10 = quran.getVersesTextByPage(10,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage11 = quran.getVersesTextByPage(11,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage12 = quran.getVersesTextByPage(12,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage13 = quran.getVersesTextByPage(13,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage14 = quran.getVersesTextByPage(14,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage15 = quran.getVersesTextByPage(15,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage16 = quran.getVersesTextByPage(16,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage17 = quran.getVersesTextByPage(17,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage18 = quran.getVersesTextByPage(18,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage19 = quran.getVersesTextByPage(19,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage20 = quran.getVersesTextByPage(20,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage21 = quran.getVersesTextByPage(21,
        verseEndSymbol: true, customSurahSeperator: "");

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
            child: ListView(
              children: [
                QuranVerseContainer(verses: versesPage1),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage2),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage3),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage4),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage5),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage6),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage7),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage8),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage9),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage10),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage11),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage12),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage13),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage14),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage15),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage16),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage17),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage18),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage19),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage20),
                SizedBox(height: 20),
                QuranVerseContainer(verses: versesPage21),
              ],
            ),
          ),
        ));
  }
}
