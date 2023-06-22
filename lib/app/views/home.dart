
import 'package:azkary/app/views/post_prayer_azkar.dart';
import 'package:azkary/app/views/sleep_azkar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../controller/azkar_controller.dart';
import 'azkar_massa.dart';
import 'azkar_other.dart';
import 'azkar_sabah.dart';
import 'about.dart';
import 'counter_azkar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AzkarController>(context);
    return DefaultTabController(
      length: 7,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              controller.isLoading
                  ? 'جــــاري تحميل الاذكار'
                  : 'اذكار المسلم اليومية',
              style: GoogleFonts.cairo(),
            ),
            backgroundColor: Colors.amber.withOpacity(0.8),
            elevation: 8,
            centerTitle: true,
            bottom: TabBar(
                padding: const EdgeInsets.all(10),
                indicator: BoxDecoration(
                    color: Colors.amber.shade100,
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
                    child: Text('المسبحةُ الالكترونية',
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
                  ),
                  Tab(
                    child: Text('عنـــــا',
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
                  ),

                ]),
          ),
          body:  const TabBarView(
            children: [
              AzkarSabah(),
              AzkarMassa(),
              PrayerAzkar(),
              SleepAzkar(),
              AzkarOthers(),
              AzkarCounter(),
              About(),


            ],
          ),
        ),
      ),
    );
  }
}
