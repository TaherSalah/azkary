import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constanc/app_style.dart';

class AzkerItemBuilder extends StatefulWidget {
  String azkarTitle;
  String azkarDes;
  String azkarRepate;

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
                elevation: 14,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15),
                  child: Column(
                    children: [
                      Text(
                        widget.azkarTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'maja', fontSize: 17.sp,height: 1.8),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        widget.azkarDes,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(height: 2.3, fontSize: 11.sp),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                    ],
                  ),
                )),
          ),
        ),
        CircleAvatar(
          backgroundColor: const Color(AppColor.primaryColor),
          child: Text(
            widget.azkarRepate,
            textAlign: TextAlign.start,
            style: GoogleFonts.cairo(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
