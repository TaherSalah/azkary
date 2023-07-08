import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:azkary/app/shard/widgets/custom_app_bar.dart';

class AzkarSimpleCounter extends StatefulWidget {


  AzkarSimpleCounter({super.key,required this.azkarConten});
  String azkarConten;

  @override
  State<AzkarSimpleCounter> createState() => _AzkarSimpleCounterState();
}

class _AzkarSimpleCounterState extends State<AzkarSimpleCounter> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CounterWidgetBuilder();
  }
}


class CounterSimpleItemBuilder extends StatefulWidget {
  const CounterSimpleItemBuilder({super.key});

  @override
  State<CounterSimpleItemBuilder> createState() => _CounterSimpleItemBuilderState();
}

class _CounterSimpleItemBuilderState extends State<CounterSimpleItemBuilder> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AzkarProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF7FFE5),

      ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Padding(padding: EdgeInsets.symmetric(vertical: 7)),
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
                                  10,
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
                    child: Text('سبٌح',
                        style: GoogleFonts.cairo(
                            fontSize: 25.sp, color: Colors.black))),
                SizedBox(
                  width: 30.w,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                            BeveledRectangleBorder(
                                borderRadius:
                                const BorderRadius.all(Radius.circular(
                                  10,
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
                        Text('اعد من الصفر',
                            style: GoogleFonts.cairo(
                                fontSize: 25.sp, color: Colors.black)),
                        SizedBox(
                          width: 15.w,
                        ),
                        const Icon(Icons.restart_alt_rounded)
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
