import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:azkary/app/views/sleep_view/sleep_counter.dart';

class SleepAzkar extends StatelessWidget {
  const SleepAzkar({super.key});

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
