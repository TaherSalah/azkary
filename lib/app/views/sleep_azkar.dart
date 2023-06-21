
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../controller/azkar_controller.dart';
import '../model/all_azkar_modal.dart';

class SleepAzkar extends StatelessWidget {
  const SleepAzkar({super.key});


  @override
  Widget build(BuildContext context) {
    final controller =Provider.of<AzkarController>(context);
    return Scaffold(
        body: Column(
          children: [
            controller.isLoading?CircularProgressIndicator():
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم',
                  style: GoogleFonts.cairo(fontWeight: FontWeight.bold,fontSize: 20)
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    final sabahList=controller.test[index];
                    return Card(

                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text(
                                  '${sleep[index]}',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.cairo()
                              ),

                            ],
                          ),
                        )
                    );
                  }, separatorBuilder: (context, index) => SizedBox(height: 15,), itemCount: sleep.length),
            )
          ],
        )



    );
  }
}
