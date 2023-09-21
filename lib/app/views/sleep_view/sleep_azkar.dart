import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:azkary/app/views/sleep_view/sleep_counter.dart';

class SleepAzkar extends StatelessWidget {
  const SleepAzkar({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Provider.of<AzkarProvider>(context);
    return Scaffold(
        backgroundColor: Azkary.azkarSleepRepate.isEmpty? Colors.white : const Color(0xffF7FFE5),
        body:  Azkary.azkarSleepRepate.isEmpty? Center(
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
                  AppString.KSleepDaialogText,
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold, fontSize: 15.sp),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  AppString.KZakarSleepFeaturesTitle,
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
                    AppString.KZakarSleepFeaturesDes,
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
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, zSleepIndex) {
                    return GestureDetector(
                      onTap: () {
                        con.decrementSleep(zSleepIndex);
                      },
                      child: AzkerItemBuilder(
                        azkarTitle: Azkary.azkarSleep[zSleepIndex],
                        azkarDes: Azkary.azkarSleepDes[zSleepIndex],
                        azkarRepate: con.zSleepIndex >=
                                Azkary.azkarSleepRepate[zSleepIndex]
                            ? '0'
                            : '${Azkary.azkarSleepRepate[zSleepIndex]}',
                        color: con.zSleepIndex >=
                                Azkary.azkarSleepRepate[zSleepIndex]
                            ? const Color(AppStyle.yellowColor)
                            : const Color(AppStyle.primaryColor),
                      ),
                    );
                  },
                  separatorBuilder: (context, zSleepIndex) => SizedBox(
                        height: 15.h,
                      ),
                  itemCount: Azkary.azkarSleep.length),
            )
          ],
        ));
  }
}
