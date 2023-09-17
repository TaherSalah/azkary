import 'package:azkary/app/shard/exports/all_exports.dart';

class AzkarOthers extends StatelessWidget {
  const AzkarOthers({super.key});

  @override
  Widget build(BuildContext context) {
    final con =Provider.of<AzkarProvider>(context);
    return Scaffold(
      backgroundColor: Azkary.azkarRepate.isNotEmpty? Colors.white : const Color(0xffF7FFE5),
      body:Azkary.azkarRepate.isNotEmpty? Center(
        child:  SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset(
                    doneZakar,
                  )),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppString.KAzkarDaialogText,
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                AppString.KZakarFeaturesTitle,
                style: GoogleFonts.cairo(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                color: Color(AppStyle.primaryColor),
                thickness: 2,
                indent: 150,
                endIndent: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  AppString.doneText,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontFamily: AppStyle.fontFamily,
                      height: 1.8.h,
                      fontSize: 17.5.sp),
                ),
              )
            ],
          ),
        ),
      ) :   Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.w),
          ),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, zOtherIndex) {
                  return GestureDetector(
                    onTap: () {
                      con.decrementOther(zOtherIndex);
                    },
                    child: buildOtherZakarItem(
                        azkarOtherTitle: Azkary.azkarOtherTitle[zOtherIndex],
                        azkarOtherDesc: Azkary.azkarOtherDesc[zOtherIndex],
                        azkarRepate: con.zOtherIndex >= Azkary.azkarRepate[zOtherIndex]?"0": '${Azkary.azkarRepate[zOtherIndex]}',
                      color: con.zOtherIndex >= Azkary.azkarRepate[zOtherIndex]?  const Color(AppStyle.yellowColor):const Color(AppStyle.primaryColor),

                    ),
                  );
                },
                separatorBuilder: (context, zOtherIndex) => SizedBox(
                      height: 15.h,
                    ),
                itemCount: Azkary.azkarOtherTitle.length),
          )
        ],
      ),
    );
  }
}

Widget buildOtherZakarItem({
  Color ? color,
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
                      style: TextStyle(fontFamily: 'maja', fontSize: 18.sp),
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
        backgroundColor: color?? const Color(AppStyle.primaryColor),
        child: Text(
          azkarRepate,
          textAlign: TextAlign.start,
          style: GoogleFonts.cairo(
              color:  Colors.white, fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}
