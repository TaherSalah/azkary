import 'package:azkary/app/shard/exports/all_exports.dart';

class AzkarOthers extends StatelessWidget {
  const AzkarOthers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7FFE5),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
          ),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return buildOtherZakarItem(
                      azkarOtherTitle: azkarOtherTitle[index],
                      azkarOtherDesc: azkarOtherDesc[index],
                      azkarRepate: azkarRepate[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 15,
                    ),
                itemCount: azkarOtherTitle.length),
          )
        ],
      ),
    );
  }
}

Widget buildOtherZakarItem({
  required String azkarOtherTitle,
  required String azkarOtherDesc,
  required String azkarRepate,
}) {
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              elevation: 14,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Column(
                  children: [
                    Text(azkarOtherTitle,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.notoKufiArabic(
                            fontSize: 14.sp, height: 3)),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      azkarOtherDesc,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'maja', fontSize: 17.sp),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                  ],
                ),
              )),
        ),
      ),
      CircleAvatar(
        backgroundColor: const Color(AppColor.primaryColor),
        child: Text(
          azkarRepate,
          textAlign: TextAlign.start,
          style: GoogleFonts.cairo(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}
