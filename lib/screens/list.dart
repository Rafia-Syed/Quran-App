import 'package:flutter/material.dart';
import 'package:quran_app/model/app_bar_buttons.dart';
import 'package:quran_app/model/juzz_data1.dart';
import 'package:quran_app/model/juzz_data2.dart';
import 'package:quran_app/model/juzz_data3.dart';
import 'package:quran_app/model/juzz_data4.dart';
import 'package:quran_app/model/juzz_data5.dart';
import 'package:quran_app/model/juzz_data6.dart';
import 'package:quran_app/model/juzz_data7.dart';
import 'package:quran_app/model/juzz_data8.dart';
import 'package:quran_app/model/juzz_data9.dart';
import 'package:quran/quran.dart' as quran;

import '../model/juzz_data1.dart';

class ListQuran extends StatelessWidget {
  ListQuran({
    super.key,
  });
  final List<String> juzz = [
    "(آلم (آ-ل-م",
    "سَیَقُولُ",
    "تِلْكَ ٱلْرُّسُلُ",
    "لن تنالوا",
    "وَٱلْمُحْصَنَاتُ",
    "لَا يُحِبُّ ٱللهُ",
    "وَإِذَا سَمِعُوا",
    "وَلَوْ أَنَّنَا",
    "قَالَ ٱلْمَلَأُ",
    "وَٱعْلَمُواْ",
    "يَعْتَذِرُونَ",
    "وَمَا مِنْ دَآبَّةٍ",
    "وَمَا أُبَرِّئُ",
    "رُبَمَا",
    "سُبْحَانَ ٱلَّذِى",
    "قَالَ أَلَمْ",
    "ٱقْتَرَبَ لِلْنَّاسِ",
    "قَدْ أَفْلَحَ",
    "وَقَالَ ٱلَّذِينَ",
    "أَمَّنْ خَلَقَ",
    "أُتْلُ مَاأُوْحِیَ	",
    "وَمَنْ يَّقْنُتْ",
    "وَمَآ لي",
    "فَمَنْ أَظْلَمُ",
    "إِلَيْهِ يُرَدُّ",
    "حم",
    "قَالَ فَمَا خَطْبُكُم",
    "قَدْ سَمِعَ ٱللهُ",
    "تَبَارَكَ ٱلَّذِى",
    "عَمَّ"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [RowButtons()],
      ),
      body: Container(
        child: ListView.builder(
            itemCount: juzz.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JuzzData(),
                        ));
                  } else if (index == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JuzzData2(),
                        ));
                  } else if (index == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JuzzData3(),
                        ));
                  } else if (index == 3) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JuzzData4(),
                        ));
                  } else if (index == 4) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JuzzData5(),
                        ));
                  } else if (index == 5) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JuzzData6(),
                        ));
                  } else if (index == 6) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JuzzData7(),
                        ));
                  } else if (index == 7) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JuzzData8(),
                        ));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JuzzData9(),
                        ));
                  }
                },
                child: Card(
                  elevation: 5,
                  shadowColor: Color.fromARGB(255, 61, 15, 70),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 50,
                    width: 200,
                    child: ListTile(
                      trailing: Icon(
                        Icons.bookmark,
                        color: Color.fromARGB(255, 255, 147, 7),
                        size: 30,
                      ),
                      title: Text(
                        juzz[index],
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 61, 15, 70),
                        ),
                      ),
                      leading: InkWell(
                        child: Icon(Icons.volume_up,
                            size: 30, color: Color.fromARGB(255, 255, 147, 7)),
                        onTap: () {
                          quran.getJuzURL(index + 1);
                        },
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
