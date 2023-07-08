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
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
      Column(
      children: [
      Image.asset(
        azkaryLogo,
        height: 400.0,
        width: 300.0,
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
    const SizedBox(
    height: 50,
    width: 50,
    child: CircularProgressIndicator(
    color: Color(AppStyle.secondaryColor),
    strokeWidth: 10,
    )),
    ],
    ),
    );
  }
}
