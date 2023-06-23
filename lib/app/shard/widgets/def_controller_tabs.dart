import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../views/about.dart';
import '../../views/azkar_massa.dart';
import '../../views/azkar_other.dart';
import '../../views/azkar_sabah.dart';
import '../../views/counter_azkar.dart';
import '../../views/post_prayer_azkar.dart';
import '../../views/rokia.dart';
import '../../views/sleep_azkar.dart';

class DefControllerTabs extends StatelessWidget {
  const DefControllerTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'اذكار المسلم اليومية',
              style: GoogleFonts.cairo(),
            ),
            // backgroundColor: Colors.amber.withOpacity(0.8),
            backgroundColor: const Color(0xffE1ECC8),

            elevation: 8,
            centerTitle: true,
            bottom: TabBar(
                padding: const EdgeInsets.all(10),
                indicator: BoxDecoration(
                    color: Color(0xffF7FFE5),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                isScrollable: true,
                physics: const BouncingScrollPhysics(),
                tabs: [
                  Tab(
                    child: Text('أذكار الصباح',
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
                  ),
                  Tab(
                    child: Text('أذكار المساء',
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
                  ),
                  Tab(
                    child: Text('أذكار بعد الصلاه',
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
                  ),
                  Tab(
                    child: Text('أذكار النوم',
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
                  ),
                  Tab(
                    child: Text('أذكار مختارة',
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
                  ),
                  Tab(
                    child: Text('الرقية الشرعية',
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
                  ),
                  Tab(
                    child: Text('المسبحةُ الالكترونية',
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
                  ),
                  Tab(
                    child: Text('عنـــــا',
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
                  ),
                ]),
          ),
          body: const TabBarView(
            children: [
              AzkarSabah(),
              AzkarMassa(),
              PrayerAzkar(),
              SleepAzkar(),
              AzkarOthers(),
              RokiaScreen(),
              AzkarCounter(),
              About(),
            ],
          ),
        ),
      ),
    );
  }
}
