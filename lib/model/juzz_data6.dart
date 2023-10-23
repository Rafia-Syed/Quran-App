import 'package:flutter/material.dart';
import 'package:quran_app/Model/verse_container.dart';
import 'package:quran/quran.dart' as quran;

class JuzzData6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> versesPage1 = quran.getVersesTextByPage(106,
        verseEndSymbol: true,
        customSurahSeperator: ""); // Replace with actual page number
    List<String> versesPage2 = quran.getVersesTextByPage(107,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage3 = quran.getVersesTextByPage(108,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage4 = quran.getVersesTextByPage(109,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage5 = quran.getVersesTextByPage(110,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage6 = quran.getVersesTextByPage(111,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage7 = quran.getVersesTextByPage(112,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage8 = quran.getVersesTextByPage(113,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage9 = quran.getVersesTextByPage(114,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage10 = quran.getVersesTextByPage(115,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage11 = quran.getVersesTextByPage(116,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage12 = quran.getVersesTextByPage(117,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage13 = quran.getVersesTextByPage(118,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage14 = quran.getVersesTextByPage(119,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage15 = quran.getVersesTextByPage(120,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage16 = quran.getVersesTextByPage(121,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage17 = quran.getVersesTextByPage(122,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage18 = quran.getVersesTextByPage(123,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage19 = quran.getVersesTextByPage(124,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage20 = quran.getVersesTextByPage(125,
        verseEndSymbol: true, customSurahSeperator: "");
    List<String> versesPage21 = quran.getVersesTextByPage(126,
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
