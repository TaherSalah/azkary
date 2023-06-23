import 'package:azkary/app/shard/app_style.dart';
import 'package:azkary/app/shard/widgets/my_divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../controller/azkar_controller.dart';
import '../../model/counter_azkar_model.dart';
import 'count_divider.dart';

class CounterWidgetBuilder extends StatelessWidget {
  const CounterWidgetBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AzkarController>(context);

    return Card(
      child: Stack(alignment: Alignment.center, children: [
        Image.asset(
          'assets/images/countBg.jpg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 170,
                width: double.infinity,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListView.separated(
                      // controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      shape: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(
                                                  AppColor.secondaryColor),
                                              width: 2)),
                                      elevation: 10,
                                      titleTextStyle: const TextStyle(),
                                      title: Text(
                                          textAlign: TextAlign.center,
                                          'فضل الذكر ',
                                          style: GoogleFonts.cairo(
                                              color: Colors.black)),
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
                                color: Color(AppColor.whiteColor),
                                width: 3.5,
                              )),
                              color: Colors.black.withOpacity(0.5),
                              elevation: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(azkarDescription[index],
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cairo(
                                            fontSize: 15, color: Colors.white)),
                                    // Text('" ${azkarContent[index]} "',
                                    //     style: GoogleFonts.cairo(
                                    //         fontSize: 15,
                                    //         color: Colors.amber.shade100)),
                                    Text(
                                        '  مرات التسبيح(${azkarCount[index]})\ مرة',
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
                      itemCount: azkarDescription.length),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.symmetric(vertical: 70)),
              Text('المسبحةُ الالكترونية',
                  style: GoogleFonts.cairo(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              countDivider(),
              const SizedBox(
                height: 18,
              ),
              Card(
                elevation: 10,
                color: Colors.black.withOpacity(0.5),
                shape: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(AppColor.whiteColor), width: 5)),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Text('${controller.counter}',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cairo(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color(AppColor.secondaryColor))),
                      onPressed: () {
                        controller.incrementCount();
                      },
                      child: Text('سبٌح',
                          style: GoogleFonts.cairo(
                              fontSize: 30, color: Colors.black))),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          elevation: const MaterialStatePropertyAll(8),
                          backgroundColor: MaterialStatePropertyAll(
                              const Color(AppColor.primaryColor)
                                  .withOpacity(0.8))),
                      onPressed: () {
                        controller.restCount();
                      },
                      child: Row(
                        children: [
                          Text('اعد من الصفر',
                              style: GoogleFonts.cairo(
                                  fontSize: 30, color: Colors.black)),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.restart_alt_rounded)
                        ],
                      ))
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}


