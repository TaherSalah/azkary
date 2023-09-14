import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutItemBuilder extends StatefulWidget {
  const AboutItemBuilder({super.key});

  @override
  State<AboutItemBuilder> createState() => _AboutItemBuilderState();
}

class _AboutItemBuilderState extends State<AboutItemBuilder> {
  @override
  Widget build(BuildContext context) {
    final con = Provider.of<AzkarProvider>(context);
    return Container(
      color: const Color(0xffF7FFE5),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: SizedBox(
              height: 150.h,
              width: 150.w,
              child: Image.asset(
                azkaryLogo,
                height: 150.h,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(AppString.KAppVersion,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey)),
          SizedBox(
            height: 7.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.copyright_sharp, size: 20.sp),
              Text(
                AppString.KAppRights,
                style: GoogleFonts.merienda(fontSize: 10.sp),
              ),
            ],
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: myDivider()),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          AppString.KAppAbout,
                          style: GoogleFonts.cairo(
                              fontWeight: FontWeight.bold, fontSize: 15.sp),
                        ),
                      ),
                      Expanded(child: myDivider()),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    textAlign: TextAlign.justify,
                    selectionColor: Colors.amber,
                    AppString.KAboutText,
                    style: GoogleFonts.notoKufiArabic(fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Expanded(child: myDivider()),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          AppString.KContact,
                          style: GoogleFonts.cairo(
                              fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                      ),
                      Expanded(child: myDivider()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () async {
                            await con.launchInWeb(Uri.parse(
                                'https://www.instagram.com/tahersalahm/'));
                          },
                          child: SvgPicture.asset(insta)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                        child: InkWell(
                            onTap: () async {
                              await con.launchInWeb(Uri.parse(
                                  'https://www.facebook.com/taher.salah.7927'));
                            },
                            child: SvgPicture.asset(facebook)),
                      ),
                      InkWell(
                          onTap: () async {
                            await con.launchInWeb(Uri.parse('uri'));
                          },
                          child: SvgPicture.asset(twitter)),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: myDivider()),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          AppString.KAppRate,
                          style: GoogleFonts.cairo(
                              fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                      ),
                      Expanded(child: myDivider()),
                    ],
                  ),
                  const RetBar(),
                  Row(
                    children: [
                      Expanded(child: myDivider()),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          AppString.KSadka,
                          style: GoogleFonts.cairo(
                              fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                      ),
                      Expanded(child: myDivider()),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 18.0.w),
                    child: Text(
                      textAlign: TextAlign.justify,
                      selectionColor: Colors.amber,
                      AppString.KAboutText2,
                      style: GoogleFonts.notoKufiArabic(fontSize: 14.sp),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: myDivider()),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          AppString.KDevlop,
                          style: GoogleFonts.cairo(
                              fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                      ),
                      Expanded(child: myDivider()),
                    ],
                  ),
                  Center(
                    child: SizedBox(
                      height: 150.h,
                      width: 150.w,
                      child: Image.asset(
                        devLogo,
                        height: 150.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
