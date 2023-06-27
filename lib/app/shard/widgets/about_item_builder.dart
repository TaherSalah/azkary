import 'package:azkary/app/shard/exports/all_exports.dart';

class AboutItemBuilder extends StatefulWidget {
  const AboutItemBuilder({super.key});

  @override
  State<AboutItemBuilder> createState() => _AboutItemBuilderState();
}

class _AboutItemBuilderState extends State<AboutItemBuilder> {
  @override
  Widget build(BuildContext context) {
    int _pressCount = 0;
    return Container(
      color: const Color(0xffF7FFE5),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(
                azkaryLogo,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text('version : 2.0.0',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 15.sp,
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
                'All Rights Reserved by Dev Taher Salah \u{1f60e}',
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
                          'عن البرنامج',
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
                    'برنامج أذكار المسلم اليوميةُ هو رفيق كل مسلم الذي لايمكنك الاستغناء عنه في يومك حيث يذكرك بالاذكار التي يسن لكل مسلم ان يكون علي دراية بها من أذكار الصباح وأذكار المساء والاذكار المفروضة عقب كل صلاه كما يمكن التسبيح داخل البرنامج ومعرفة العدد الذي اتممتة من التسبيح.',
                    style: GoogleFonts.notoKufiArabic(fontSize: 14.sp),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(child: myDivider()),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          'تقييم التطبيق',
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
                          'صدقة جارية',
                          style: GoogleFonts.cairo(
                              fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                      ),
                      Expanded(child: myDivider()),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Text(
                      textAlign: TextAlign.justify,
                      selectionColor: Colors.amber,
                      'برنامج أذكار المسلم اليوميةُ هو صدقة جارية لكل اموات المسلمين ولكل من شارك هذا التطبيق لوجه الله تعالي.',
                      style: GoogleFonts.notoKufiArabic(fontSize: 14.sp),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: myDivider()),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          'تطوير',
                          style: GoogleFonts.cairo(
                              fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                      ),
                      Expanded(child: myDivider()),
                    ],
                  ),
                  Center(
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        devLogo,
                        height: 150,
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
