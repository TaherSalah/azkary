import 'package:azkary/app/shard/exports/all_exports.dart';

class CounterWidgetBuilder extends StatefulWidget {
  const CounterWidgetBuilder({super.key});

  @override
  State<CounterWidgetBuilder> createState() => _CounterWidgetBuilderState();
}

class _CounterWidgetBuilderState extends State<CounterWidgetBuilder> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AzkarProvider>(context);

    return Card(
      child: Stack(alignment: Alignment.center, children: [
        Image.asset(
          'assets/images/countBg.jpg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 170.h,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10.w,
                        ),
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: azkarContent.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.transparent,
                        child: GestureDetector(
                          onTap: () {
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      shape: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: const Color(
                                                  AppStyle.secondaryColor),
                                              width: 2.w)),
                                      elevation: 10,
                                      titleTextStyle: const TextStyle(),
                                      title: Text(
                                          textAlign: TextAlign.center,
                                          AppString.KFadlZakar,
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
                                            child: const Text(AppString.KDone),
                                          ),
                                        ),
                                      ],
                                    ));
                          },
                          child: Card(
                              shape: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: const Color(AppStyle.whiteColor),
                                width: 3.5.w,
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
                                            fontSize: 15.sp,
                                            color: Colors.white)),
                                    Text(
                                        '  مرات التسبيح(${azkarCount[index]})\ مرة',
                                        style: GoogleFonts.cairo(
                                            fontSize: 12.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              )),
                        ),
                      );
                    }),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 7)),
              Text(AppString.KCounter,
                  style: GoogleFonts.cairo(
                      fontSize: 30.sp,
                      color: Colors.green.shade100,
                      fontWeight: FontWeight.bold)),
              countDivider(),
              SizedBox(
                height: 12.h,
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
              SizedBox(
                height: 20.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              BeveledRectangleBorder(
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(
                                    8,
                                  )),
                                  side: BorderSide(
                                      width: 1.5.w,
                                      color:
                                          const Color(AppStyle.whiteColor)))),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color(AppStyle.secondaryColor))),
                      onPressed: () {
                        controller.incrementCount();
                      },
                      child: Text(AppString.KSabahText,
                          style: GoogleFonts.cairo(
                              fontSize: 25.sp, color: Colors.black))),
                  SizedBox(
                    width: 85.w,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              BeveledRectangleBorder(
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(
                                    8,
                                  )),
                                  side: BorderSide(
                                      width: 1.5.w,
                                      color:
                                          const Color(AppStyle.whiteColor)))),
                          elevation: const MaterialStatePropertyAll(8),
                          backgroundColor: MaterialStatePropertyAll(
                              const Color(AppStyle.primaryColor)
                                  .withOpacity(0.8))),
                      onPressed: () {
                        controller.restCount();
                      },
                      child: Row(
                        children: [
                          Text('تصفير',
                              style: GoogleFonts.cairo(
                                  fontSize: 25.sp, color: Colors.black)),
                        ],
                      ))
                ],
              ),
            ],
          ),
        ),
        controller.showDialog()
      ]),
    );
  }
}
