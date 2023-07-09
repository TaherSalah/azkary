import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:azkary/app/views/sleep_view/sleep_counter.dart';


class SleepAzkar extends StatelessWidget {
  const SleepAzkar({super.key});

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
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        navigate(context, SleepCounter(
                            azkarConten: azkarSleep[index],
                            azkarContenDes: azkarSleepDes[index],
                            azkarContenRepate: azkarSleepRepate[index]));
                      },
                      child: AzkerItemBuilder(
                          azkarTitle: azkarSleep[index],
                          azkarDes: azkarSleepDes[index],
                          azkarRepate: azkarSleepRepate[index]),
                    );
                  },
                  separatorBuilder: (context, index) =>
                  const SizedBox(
                    height: 15,
                  ),
                  itemCount: azkarSleep.length),
            )
          ],
        ));
  }
}
