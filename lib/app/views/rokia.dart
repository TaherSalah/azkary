import 'package:flutter/material.dart';

import '../model/rokia_model.dart';
import '../shard/widgets/azkar_item_builder.dart';

class RokiaScreen extends StatelessWidget {
  const RokiaScreen({super.key});

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
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return AzkerItemBuilder(
                      azkarTitle: rokiaQuranTitle[index],
                      azkarDes: rokiaQuranRawi[index],
                      azkarRepate: rokiaQuranRepe[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 15,
                ),
                itemCount: rokiaQuranTitle.length),
          )
        ],
      ),
    );

  }
}
