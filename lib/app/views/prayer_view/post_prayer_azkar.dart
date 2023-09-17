import 'package:azkary/app/shard/exports/all_exports.dart';

class PrayerAzkar extends StatelessWidget {
  const PrayerAzkar({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Provider.of<AzkarProvider>(context);

    return Scaffold(
        backgroundColor: Azkary.azkarPrayerRepate.isNotEmpty? Colors.white : const Color(0xffF7FFE5),
        body:Azkary.azkarPrayerRepate.isNotEmpty? Center(
          child:  SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Image.asset(
                      doneZakar,
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  AppString.KPrayerDaialogText,
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold, fontSize: 15.sp),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  AppString.KZakarPrayerFeaturesTitle,
                  style: GoogleFonts.cairo(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Divider(
                  color: Color(AppStyle.primaryColor),
                  thickness: 2,
                  indent: 150,
                  endIndent: 150,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    AppString.doneText,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: AppStyle.fontFamily,
                        height: 1.8.h,
                        fontSize: 17.5.sp),
                  ),
                )
              ],
            ),
          ),
        ) :  Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.w),
            ),
            Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, zPrayerIndex) {
                    return GestureDetector(
                      onTap: () {
                        con.decrementPrayer(zPrayerIndex);

                        // navigate(context, PrayerCounter(
                        //     azkarConten: Azkary.azkarPrayer[index],
                        //     azkarContenDes: Azkary.azkarPrayerDes[index],
                        //     azkarContenRepate: '${Azkary.azkarPrayerRepate[index]}'));
                      },
                      child: AzkerItemBuilder(
                        azkarTitle: Azkary.azkarPrayer[zPrayerIndex],
                        azkarDes: Azkary.azkarPrayerDes[zPrayerIndex],
                        azkarRepate: con.zPrayerIndex >=
                                Azkary.azkarPrayerRepate[zPrayerIndex]
                            ? '0'
                            : '${Azkary.azkarPrayerRepate[zPrayerIndex]}',
                        color: con.zPrayerIndex >=
                                Azkary.azkarPrayerRepate[zPrayerIndex]
                            ? const Color(AppStyle.yellowColor)
                            : const Color(AppStyle.primaryColor),
                      ),
                    );
                  },
                  separatorBuilder: (context, zPrayerIndex) => SizedBox(
                        height: 15.h,
                      ),
                  itemCount: Azkary.azkarPrayer.length),
            )
          ],
        ));
  }
}
