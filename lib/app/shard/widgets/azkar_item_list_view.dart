import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/counter_azkar_model.dart';
import '../constanc/app_style.dart';

class AzkarListViewItemBuilder extends StatelessWidget {
  const AzkarListViewItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        SizedBox(
            // height: 120,
            width: double.infinity,
            child: ListView.separated(
                // controller: _controller,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                shape: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(AppStyle.secondaryColor),
                                        width: 2)),
                                elevation: 10,
                                titleTextStyle: const TextStyle(),
                                title: Text(
                                    textAlign: TextAlign.center,
                                    'فضل الذكر ',
                                    style:
                                        GoogleFonts.cairo(color: Colors.black)),
                                content: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Text(azkarContent[index],
                                        style: GoogleFonts.cairo())),
                                actions: <Widget>[
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context, 'OK');
                                      },
                                      style: const ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Color(0xffF7FFE5))),
                                      child: const Text('تـــــم'),
                                    ),
                                  ),
                                ],
                              ));
                    },
                    child: Card(
                        shape: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(AppStyle.whiteColor),
                          width: 3.5,
                        )),
                        color: Colors.black.withOpacity(0.5),
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(azkarDescription[index],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.cairo(
                                      fontSize: 15, color: Colors.white)),
                              // Text('" ${azkarContent[index]} "',
                              //     style: GoogleFonts.cairo(
                              //         fontSize: 15,
                              //         color: Colors.amber.shade100)),
                              Text('  مرات التسبيح(${azkarCount[index]})\ مرة',
                                  style: GoogleFonts.cairo(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        )),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                itemCount: azkarDescription.length)),
      ],
    );
  }
}
