import 'package:azkary/app/shard/exports/all_exports.dart';

class PrayerAzkar extends StatelessWidget {
  const PrayerAzkar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF7FFE5),

        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
            ),
            Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        navigate(context, PrayerCounter(
                            azkarConten: azkarPrayer[index],
                            azkarContenDes: azkarPrayerDes[index],
                            azkarContenRepate: azkarPrayerRepate[index]));
                      },
                      child: AzkerItemBuilder(
                          azkarTitle: azkarPrayer[index],
                          azkarDes: azkarPrayerDes[index],
                          azkarRepate: azkarPrayerRepate[index]),
                    );
                  },
                  separatorBuilder: (context, index) =>
                  const SizedBox(
                    height: 15,
                  ),
                  itemCount: azkarPrayer.length),
            )
          ],
        ));
  }
}
