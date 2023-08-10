import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:azkary/app/shard/widgets/def_text_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List<Color>prayerColor=[

  const Color(0xff5ACC05),
  const Color(0xffCE82FF),
  const Color(0xff1CB0F6),
  const Color(0xff5ACC05),
  const Color(0xff5ACC05),
  const Color(0xff3F2305),
];
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final con = Provider.of<AzkarProvider>(context);

    return SafeArea(
      child: Scaffold(
        appBar: customAppBar('title'),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              height:  100,

              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      color:Color(0xffFFC800),


                      // elevation: 10,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                            'gfgfgfg'),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 10,),
                  itemCount: 5),
            )
          ],
        ),
        //appBar: customAppWidget(title: Consts.aboutUsTitleAppBar),
      ),
    );
  }
}

class CustomAppBarWidget extends StatelessWidget {
  String title;

  CustomAppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BackButtonWidget(),
        SizedBox(width: 16.w),
        SizedBox(
            width: 230.w,
            height: 44.h,
            child: TextDefaultWidget(
                title: title,
                maxLines: 1,
                textOverflow: TextOverflow.ellipsis,
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700)),
      ],
    );
  }
}

class BackButtonWidget extends StatelessWidget {
  final String? icon;
  final Color? backGroundColor, iconColor;
  final double? width, height;
  final void Function()? onTap;

  const BackButtonWidget(
      {Key? key,
      this.icon,
      this.backGroundColor,
      this.height,
      this.width,
      this.onTap,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Navigator.of(context).maybePop(),
      child: Transform.scale(
        alignment: Alignment.center,
        child: SvgPicture.asset(
          icon ?? "assets/images/arrow-left.svg",
          color: iconColor ?? Colors.black,
          height: height ?? 24.h,
          width: width ?? 24.h,
        ),
      ),
    );
  }
}
