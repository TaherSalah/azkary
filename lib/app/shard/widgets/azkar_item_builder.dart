import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AzkerItemBuilder extends StatefulWidget {
  String azkarTitle;
  String azkarDes;
  int azkarRepate;

  AzkerItemBuilder(
      {super.key,
      required this.azkarTitle,
      required this.azkarDes,
      required this.azkarRepate});

  @override
  State<AzkerItemBuilder> createState() => _AzkerItemBuilderState();
}

class _AzkerItemBuilderState extends State<AzkerItemBuilder> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15),
                  child: Column(
                    children: [
                      Text(widget.azkarTitle,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.notoKufiArabic(
                              fontSize: 15.5, height: 2.3)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.azkarDes,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(height: 2.3, fontSize: 11.5),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                )),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.amber,
          child: Text(
            '${widget.azkarRepate}',
            textAlign: TextAlign.start,
            style: GoogleFonts.cairo(
                color: Colors.black, fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
