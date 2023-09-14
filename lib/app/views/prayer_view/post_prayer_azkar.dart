import 'package:azkary/app/shard/exports/all_exports.dart';

class PrayerAzkar extends StatelessWidget {
  const PrayerAzkar({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Provider.of<AzkarProvider>(context);

    return Scaffold(
        backgroundColor: const Color(0xffF7FFE5),
        body: Column(
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
