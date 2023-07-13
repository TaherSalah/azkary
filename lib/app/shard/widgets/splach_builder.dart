import 'package:azkary/app/shard/exports/all_exports.dart';


class SplashItemBuilder extends StatefulWidget {
  const SplashItemBuilder({super.key});

  @override
  State<SplashItemBuilder> createState() => _SplashItemBuilderState();
}

class _SplashItemBuilderState extends State<SplashItemBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: double.infinity.h,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
      Column(
      children: [
      Image.asset(
        azkaryLogo,
        height: 400.0.h,
        width: 300.0.w,
      ),
      ],
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child:  Text(
          textAlign:TextAlign.center,
        '(سبَق المُفرِّدونَ سبَق المُفرِّدونَ )\n قالوا : يا رسولَ اللهِ ما المُفرِّدونَ ؟ \n قال :( الذَّاكرونَ اللهَ كثيرًا والذَّاكراتُ)'
        ,
        style: GoogleFonts.cairo(fontSize: 15.sp,fontWeight: FontWeight.bold),
        ),
      ),
    ),
     SizedBox(
    child:  CircularProgressIndicator(
    color: const Color(AppStyle.secondaryColor),
    strokeWidth: 5.w,
    )),
    ],
    ),
    );
  }
}
