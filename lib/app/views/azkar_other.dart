import 'package:azkary/app/model/other_azkar_model.dart';
import 'package:flutter/material.dart';

import '../shard/widgets/azkar_item_builder.dart';

class AzkarOthers extends StatelessWidget {
  const AzkarOthers({super.key});

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
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),                itemBuilder: (context, index) {
                  return AzkerItemBuilder(
                      azkarTitle: azkarOtherTitle[index],
                      azkarDes: azkarOtherDesc[index],
                      azkarRepate: azkarRepate[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 15,
                ),
                itemCount: azkarOtherTitle.length),
          )
        ],
      ),
    );
  }
}
