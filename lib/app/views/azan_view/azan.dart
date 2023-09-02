
import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:adhan/adhan.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl.dart' as intl;

import 'dart:ui' as ui;

class AzanView extends StatefulWidget {
  const AzanView({Key? key}) : super(key: key);

  @override
  State<AzanView> createState() => _AzanViewState();
}

class _AzanViewState extends State<AzanView> {
  @override
  Widget build(BuildContext context)  {
    final con =Provider.of<AzkarProvider>(context).locationAccess();
    final cond =Provider.of<AzkarProvider>(context);
     final double let =cond.lat;
     final double long =cond.long;

    final perth = Coordinates(let,long,);

    final nyParams = CalculationMethod.egyptian.getParameters();

    nyParams.madhab = Madhab.hanafi;
    final nyPrayerTimes = PrayerTimes.today(perth, nyParams);
    var x  =  nyPrayerTimes.nextPrayer().toString().toUpperCase();
    //print(nyPrayerTimes.fajr.timeZoneName);
    final String fajr = DateFormat.jm().format(nyPrayerTimes.fajr);
    final params = CalculationMethod.muslim_world_league.getParameters();

    //print(DateFormat.jm().format(nyPrayerTimes.sunrise));
    final String dhuhr = DateFormat.jm().format(nyPrayerTimes.dhuhr);
    final String asr = DateFormat.jm().format(nyPrayerTimes.asr);
    final String maghrib = DateFormat.jm().format(nyPrayerTimes.maghrib);
    final String isha = DateFormat.jm().format(nyPrayerTimes.isha);
    final String sunrise = DateFormat.jm().format(nyPrayerTimes.sunrise);

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 25,),
            ElevatedButton(

                style: ButtonStyle(
                  padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 30,vertical: 15)),
                    shape: MaterialStatePropertyAll(

                        BeveledRectangleBorder(

                            borderRadius:
                            const BorderRadius.all(Radius.circular(
                              8,
                            )),
                            side: BorderSide(
                                width: 1.5.w,
                                color:
                                const Color(AppStyle.whiteColor)))),
                    backgroundColor: const MaterialStatePropertyAll(
                        Color(AppStyle.primaryColor))),
                onPressed: () {
                  cond.locationAccess();
                },
                child: Text(AppString.KLocation,
                    style: GoogleFonts.cairo(
                        fontSize: 15.sp, color: Colors.black))),
            const SizedBox(height: 25,),

            Card(
              color:  Color(AppStyle.secondaryColor),
              child: ListTile(
                title: Text(
                  'الفجر',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                trailing: Text(fajr),
              ),
            ),
            SizedBox(height: 15,),
            Card(
              color:  Color(AppStyle.secondaryColor),
              child: ListTile(
                title: Text(
                  'الشروق',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                trailing: Text(sunrise),
              ),
            ),

            SizedBox(height: 15,),
            Card(
              color:  Color(AppStyle.secondaryColor),
              child: ListTile(
                title: Text(
                  'الظهر',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                trailing: Text(dhuhr),
              ),
            ),
            SizedBox(height: 15,),
            Card(
              color:  Color(AppStyle.secondaryColor),
              child: ListTile(
                title: Text(
                  'العصر',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                trailing: Text(asr),
              ),
            ),
            SizedBox(height: 15,),
            Card(
              color:  Color(AppStyle.secondaryColor),
              child: ListTile(
                title: Text(
                  'المغرب',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                trailing: Text(maghrib),
              ),
            ),
            SizedBox(height: 15,),
            Card(
              color:  Color(AppStyle.secondaryColor),
              child: ListTile(
                title: Text(
                  'العشاء',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                trailing: Text(isha),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
