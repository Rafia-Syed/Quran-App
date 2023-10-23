import 'package:flutter/material.dart';
import 'package:quran_app/Model/verse_container.dart';
import 'package:quran/quran.dart' as quran;

class JuzzData4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> versesPage1 = quran.getVersesTextByPage(64,
        verseEndSymbol: true,
        customSurahSeperator: ""); // Replace with actual page number
    List<String> versesPage2 = quran.getVersesTextByPage(65,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage3 = quran.getVersesTextByPage(66,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage4 = quran.getVersesTextByPage(67,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage5 = quran.getVersesTextByPage(68,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage6 = quran.getVersesTextByPage(69,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage7 = quran.getVersesTextByPage(70,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage8 = quran.getVersesTextByPage(71,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage9 = quran.getVersesTextByPage(72,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage10 = quran.getVersesTextByPage(73,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage11 = quran.getVersesTextByPage(74,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage12 = quran.getVersesTextByPage(75,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage13 = quran.getVersesTextByPage(76,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage14 = quran.getVersesTextByPage(77,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage15 = quran.getVersesTextByPage(78,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage16 = quran.getVersesTextByPage(79,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage17 = quran.getVersesTextByPage(80,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage18 = quran.getVersesTextByPage(81,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage19 = quran.getVersesTextByPage(82,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage20 = quran.getVersesTextByPage(83,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage21 = quran.getVersesTextByPage(84,
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
