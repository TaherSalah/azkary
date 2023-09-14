import 'dart:ui';

import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:adhan/adhan.dart';
import 'package:intl/intl.dart';

class AzanView extends StatefulWidget {
  const AzanView({Key? key}) : super(key: key);

  @override
  State<AzanView> createState() => _AzanViewState();
}

class _AzanViewState extends State<AzanView> {
  @override
  Widget build(BuildContext context) {
    final con = Provider.of<AzkarProvider>(context).locationAccess();
    final cond = Provider.of<AzkarProvider>(context);
    final double let = cond.lat;
    final double long = cond.long;

    final perth = Coordinates(long, let);

    final nyParams = CalculationMethod.egyptian.getParameters();

    nyParams.madhab = Madhab.hanafi;
    final nyPrayerTimes = PrayerTimes.today(perth, nyParams);
    var x = nyPrayerTimes.nextPrayer().toString().toUpperCase();
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
      body: Stack(
        children: [
          Image.asset(
            bgAzan,
            // width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(
              color: Colors.transparent,
            ),
          )),
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            physics: const BouncingScrollPhysics(),
            children: <Widget>[
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: Text(AppString.KAzan,
                    style: GoogleFonts.cairo(
                        fontSize: 30.sp,
                        color: const Color(AppStyle.whiteColor),
                        fontWeight: FontWeight.bold)),
              ),
              countDivider(),

              SizedBox(
                height: 25.h,
              ),
              azanContainerItemBuilder(azanTitle: 'الفجر', azanTime: fajr),
              SizedBox(
                height: 15.h,
              ),
              azanContainerItemBuilder(azanTitle: 'الشروق', azanTime: sunrise),

              SizedBox(
                height: 15.h,
              ),
              azanContainerItemBuilder(azanTitle: 'الظهر', azanTime: dhuhr),

              SizedBox(
                height: 15.h,
              ),
              azanContainerItemBuilder(azanTitle: 'العصر', azanTime: asr),

              SizedBox(
                height: 15.h,
              ),
              azanContainerItemBuilder(azanTitle: 'المغرب', azanTime: maghrib),

              SizedBox(
                height: 15.h,
              ),
              azanContainerItemBuilder(azanTitle: 'العشاء', azanTime: isha),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                onTap: () {
                  cond.locationAccess();

                },
                child: CircleAvatar(
                    radius: 30.r,
                    backgroundColor:
                        Color(AppStyle.secondaryColor).withOpacity(0.6),
                    child: Text(' تحديث',
                        style: GoogleFonts.cairo(
                            fontSize: 15.sp, color: Colors.white))),
              ),

              // SizedBox(
              //   width: 50,
              //   child: ElevatedButton(
              //       style: ButtonStyle(
              //           padding:  MaterialStatePropertyAll(
              //               EdgeInsets.symmetric(
              //                   horizontal: 50.w, vertical: 12.h)),
              //           shape: MaterialStatePropertyAll(
              //               BeveledRectangleBorder(
              //                   borderRadius:
              //                    BorderRadius.all(Radius.circular(
              //                     2.r,
              //                   )),
              //                   side: BorderSide(
              //                       width: 1.5.w,
              //                       color:
              //                       const Color(AppStyle.whiteColor)))),
              //           backgroundColor:  MaterialStatePropertyAll(
              //               Colors.transparent
              //           )),
              //       onPressed: () {
              //         cond.locationAccess();
              //       },
              //       child: Text(AppString.KLocation,
              //           style: GoogleFonts.cairo(
              //               fontSize: 15.sp, color: Colors.white))),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget azanContainerItemBuilder(
    {required String azanTitle, required String azanTime}) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border.all(color: const Color(AppStyle.primaryColor), width: 2.5.w),
        borderRadius: BorderRadius.circular(10.r)),
    child: ListTile(
      title: Text(
        azanTitle,
        style: GoogleFonts.cairo(
            fontWeight: FontWeight.bold, fontSize: 20.sp, color: Colors.white),
      ),
      trailing: Text(
        azanTime,
        style: GoogleFonts.cairo(
            fontWeight: FontWeight.w600,
            fontSize: 16.5.sp,
            color: Colors.white),
      ),
    ),
  );
}
