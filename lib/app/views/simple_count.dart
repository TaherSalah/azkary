import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:azkary/app/shard/navigation.dart';
import 'package:azkary/app/shard/widgets/custom_app_bar.dart';

class AzkarSimpleCounter extends StatefulWidget {
  String azkarConten;
  String azkarContenDes;
  String azkarContenRepate;

  AzkarSimpleCounter(
      {super.key,
      required this.azkarConten,
      required this.azkarContenDes,
      required this.azkarContenRepate});

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
    final controller = Provider.of<AzkarProvider>(context);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: customAppBar('اذكار الصباح'),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 45.h,
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
              AzkerItemBuilder(
                  azkarTitle: widget.azkarConten,
                  azkarDes: widget.azkarContenDes,
                  azkarRepate: widget.azkarContenRepate),
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
                      radius: 30,
                      child: Text('سبٌح',
                          style: GoogleFonts.cairo(
                              fontSize: 22.sp, color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.restCount();
                    },
                    child: const CircleAvatar(
                        backgroundColor: Color(AppStyle.greenColor),
                        radius: 30,
                        child: Icon(
                          Icons.restart_alt_rounded,
                          color: Color(AppStyle.blackColor),
                        )),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              ElevatedButton(
                  style: ButtonStyle(

                      backgroundColor: const MaterialStatePropertyAll(
                          Color(AppStyle.secondaryColor))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('العوده لاكمال الاذكار',
                      style: GoogleFonts.cairo(
                          fontSize: 15.sp, color: Colors.black))),
            ],
          ),
        ),
      ),
    );
  }
}
