import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../controller/azkar_controller.dart';

class AzkarMassa extends StatelessWidget {
  const AzkarMassa({super.key});

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
                    final sabahList=controller.azkarMassaList[index];
                    return Card(

                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text(
                                  '${sabahList.zekr}',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.cairo()
                              ),
                              Text(
                                '${sabahList.bless}',
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        )
                    );
                  }, separatorBuilder: (context, index) => SizedBox(height: 15,), itemCount: controller.azkarMassaList.length),
            )
          ],
        )



    );
  }
}
