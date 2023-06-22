import 'package:azkary/app/shard/azkar_item_builder.dart';
import 'package:flutter/material.dart';
import '../model/prayer_azkar_model.dart';

class PrayerAzkar extends StatelessWidget {
  const PrayerAzkar({super.key});

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
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return AzkerItemBuilder(
                    azkarTitle: azkarPrayer[index],
                    azkarDes: azkarPrayerDes[index],
                    azkarRepate: azkarPrayerRepate[index]);
              },
              separatorBuilder: (context, index) => const SizedBox(
                    height: 15,
                  ),
              itemCount: azkarPrayer.length),
        )
      ],
    ));
  }
}
