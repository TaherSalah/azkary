import 'package:azkary/app/shard/azkar_item_builder.dart';
import 'package:flutter/material.dart';
import '../model/sleep_model.dart';
class SleepAzkar extends StatelessWidget {
  const SleepAzkar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.1),
        body: Column(
          children: [
            const Padding(

              padding: EdgeInsets.symmetric(vertical: 8.0),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return AzkerItemBuilder(
                        azkarTitle: azkarSleep[index],
                        azkarDes: azkarSleepDes[index],
                        azkarRepate: azkarSleepRepate[index]);
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 15,
                      ),
                  itemCount: azkarSleep.length),
            )
          ],
        ));
  }
}
