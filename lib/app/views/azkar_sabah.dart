import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../controller/azkar_controller.dart';
import '../model/sabah_model.dart';

class AzkarSabah extends StatelessWidget {
  const AzkarSabah({super.key});


  @override
  Widget build(BuildContext context) {
    final controller =Provider.of<AzkarController>(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم',
              style: GoogleFonts.cairo(fontWeight: FontWeight.bold,fontSize: 20)
            ),
          ),
          Expanded(
            child: ListView.separated(
                physics: BouncingScrollPhysics(),

                itemBuilder: (context, index) {
                  final sabahList=controller.azkarSabahList[index];
                  return Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      SizedBox(
                        width:double.infinity,
                        child: Card(

                          elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(33.0),
                              child: Column(
                                children: [
                                  Text(
                                      '${azkarSabah[index]}',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.cairo(fontSize: 25)
                                  ),
                                  // Text(
                                  //   '${sabahList.bless}',
                                  //   textAlign: TextAlign.start,
                                  // ),
                                ],
                              ),
                            )
                        ),
                      ),
                     // CircleAvatar(
                     //   child:  Text(
                     //     '${sabahList.repeat}',
                     //     textAlign: TextAlign.start,
                     //   ),
                     // )

                    ],
                  );
                }, separatorBuilder: (context, index) => SizedBox(height: 15,), itemCount: controller.azkarMassaList.length),
          )
        ],
      )



    );
  }
}
