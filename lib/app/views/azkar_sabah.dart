import 'package:azkary/app/shard/widgets/azkar_item_builder.dart';
import 'package:flutter/material.dart';

import '../model/sabah_model.dart';

class AzkarSabah extends StatelessWidget {
  const AzkarSabah({super.key});

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
                  return AzkerItemBuilder(
                      azkarTitle: azkarSabah[index],
                      azkarDes: azkarSabahDes[index],
                      azkarRepate: azkarSabahRepate[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 15,
                    ),
                itemCount: azkarSabah.length),
          )
        ],
      ),
    );
  }
}
