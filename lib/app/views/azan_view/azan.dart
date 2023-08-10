
import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adhan/adhan.dart';
import 'package:intl/intl.dart';
import 'package:geolocator/geolocator.dart';

class Azan extends StatefulWidget {
  const Azan({Key? key}) : super(key: key);

  @override
  State<Azan> createState() => _AzanState();
}

class _AzanState extends State<Azan> {
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
    //print(nyPrayerTimes.fajr.timeZoneName);
    final String fajr = DateFormat.jm().format(nyPrayerTimes.fajr);
    //print(DateFormat.jm().format(nyPrayerTimes.sunrise));
    final String dhuhr = DateFormat.jm().format(nyPrayerTimes.dhuhr);
    final String asr = DateFormat.jm().format(nyPrayerTimes.asr);
    final String maghrib = DateFormat.jm().format(nyPrayerTimes.maghrib);
    final String isha = DateFormat.jm().format(nyPrayerTimes.isha);

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 25,),
            ElevatedButton(

                style: ButtonStyle(
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
                        Color(AppStyle.secondaryColor))),
                onPressed: () {
                  cond.locationAccess();
                },
                child: Text(AppString.KLocation,
                    style: GoogleFonts.cairo(
                        fontSize: 15.sp, color: Colors.black))),

            Card(
              color: Colors.black12 ,
              child: ListTile(
                title: Text(
                  'Fajr',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('$fajr'),
              ),
            ),
            // Card(
            //   child: ListTile(
            //     title: Text('Zuhur'),
            //     subtitle: Text('$dhuhr'),
            //   ),
            // ),
            // Card(
            //   child: ListTile(
            //     title: Text('${let}'),
            //     subtitle: Text('$dhuhr'),
            //   ),
            // ),
            // Card(
            //   child: ListTile(
            //     title: Text('${let}'),
            //     subtitle: Text('$dhuhr'),
            //   ),
            // ),
            // Card(
            //   child: ListTile(
            //     title: const Text('Asr'),
            //     subtitle: Text(asr),
            //   ),
            // ),
            // Card(
            //   child: ListTile(
            //     title: Text('Maghrib'),
            //     subtitle: Text('$maghrib'),
            //   ),
            // ),
            // Card(
            //   child: ListTile(
            //     title: Text('Ishaa'),
            //     subtitle: Text('$isha'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
