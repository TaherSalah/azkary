import 'package:azkary/app/shard/exports/all_exports.dart';

class AzkarMassa extends StatelessWidget {
  const AzkarMassa({super.key});

  @override
  Widget build(BuildContext context) {
    final con =Provider.of<AzkarProvider>(context);
    return Scaffold(
        // backgroundColor: Colors.black.withOpacity(0.1),
        backgroundColor: Azkary.azkarMassaRepate.isEmpty? Colors.white : const Color(0xffF7FFE5),
        body:Azkary.azkarMassaRepate.isEmpty? Center(
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
                  AppString.KMessaDaialogText,
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold, fontSize: 15.sp),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  AppString.KZakarMessaFeaturesTitle,
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
        ) :  Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.w),
            ),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, zMessaIndex) {
                    return GestureDetector(
                      onTap: () {
                       con.decrementMessa(zMessaIndex);
                      },
                      child: AzkerItemBuilder(
                          azkarTitle: Azkary.azkarMassa[zMessaIndex],
                          azkarDes: Azkary.azkarMassaDes[zMessaIndex],
                          azkarRepate: con.zMessaIndex >= Azkary.azkarMassaRepate[zMessaIndex]?'0':'${Azkary.azkarMassaRepate[zMessaIndex]}',
                        color: con.zMessaIndex >= Azkary.azkarMassaRepate[zMessaIndex]?  const Color(AppStyle.yellowColor):const Color(AppStyle.primaryColor),

                      ),
                    );
                  },
                  separatorBuilder: (context, zMessaIndex) => SizedBox(
                        height: 15.h,
                      ),
                  itemCount: Azkary.azkarMassa.length),
            )
          ],
        ));
  }
}
