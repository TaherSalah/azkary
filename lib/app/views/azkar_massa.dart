import 'package:azkary/app/shard/azkar_item_builder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../controller/azkar_controller.dart';
import '../model/massa_model.dart';

class AzkarMassa extends StatelessWidget {
  const AzkarMassa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.1),

        body: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
        ),
        Expanded(
          child: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return AzkerItemBuilder(
                    azkarTitle: azkarMassa[index],
                    azkarDes: azkarMassaDes[index],
                    azkarRepate: azkarMassaRepate[index]);
              },
              separatorBuilder: (context, index) => SizedBox(
                    height: 15,
                  ),
              itemCount:azkarMassa.length ),
        )
      ],
    ));
  }
}
