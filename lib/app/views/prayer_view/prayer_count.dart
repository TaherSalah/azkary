import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:azkary/app/shard/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';

class PrayerCounter extends StatefulWidget {
  String azkarConten;
  String azkarContenDes;
  String azkarContenRepate;

  PrayerCounter(
      {super.key,
        required this.azkarConten,
        required this.azkarContenDes,
        required this.azkarContenRepate});

  @override
  State<PrayerCounter> createState() => _PrayerCounterState();
}

class _PrayerCounterState extends State<PrayerCounter> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AzkarProvider>(context);

    return Hero(
      tag: 'sabah',
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: const Color(AppStyle.primaryColor),
          appBar: customAppBar('أذكار بعد الصلاة المكتوبة'),
          body: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25.h,
                    ),
                    Card(
                      elevation: 10,
                      color: Colors.black.withOpacity(0.5),
                      shape: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(AppStyle.whiteColor), width: 5)),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        padding: const EdgeInsets.all(25),
                        child: Text('${controller.counter}',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.sp,
                                color: Colors.white)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.incrementCount();

                      },
                      child: AzkerItemBuilder(
                          azkarTitle: widget.azkarConten,
                          azkarDes: widget.azkarContenDes,
                          azkarRepate: widget.azkarContenRepate),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.incrementCount();
                          },
                          child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              child: Image.asset(
                                click,
                                color: Colors.green,
                              )),
                        ),
                        SizedBox(
                          width: 150.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.restCount();
                          },
                          child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              child: Image.asset(
                                arrow,
                                color: Colors.red.shade700,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 25,
                        child: Image.asset(leftArrow),
                      ),
                    ),
                  ],
                ),
                ////*** show dialog in ui ****///
                controller.showDialog()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
