import 'package:azkary/app/shard/exports/all_exports.dart';


class AzkarSabah extends StatefulWidget {
  const AzkarSabah({super.key});

  @override
  State<AzkarSabah> createState() => _AzkarSabahState();
}
int index = 0;

class _AzkarSabahState extends State<AzkarSabah> {
  @override
  Widget build(BuildContext context) {
    final con =Provider.of<AzkarProvider>(context);
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: const Color(AppStyle.primaryColor),
      //   onPressed: () {
      //     navigate(context, const DoneScreen());
      //   },
      //   child: const Icon(
      //     Icons.done_all,
      //     color: Color(AppStyle.whiteColor),
      //   ),
      // ),
      backgroundColor: Azkary.azkarSabahRepate.isNotEmpty? Colors.white : Color(0xffF7FFE5),
      body: Hero(
        tag: 'sabah',
        transitionOnUserGestures: true,
        child: Azkary.azkarSabahRepate.isNotEmpty? Center(
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
                  AppString.KDaialogText,
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold, fontSize: 15.sp),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  AppString.KZakarSabahFeaturesTitle,
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
        ) : Column(
          children: [
             Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.w),
            ),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, zSabahIndex) {
                    return GestureDetector(
                      onTap: () {
                        con.decrementSabah(zSabahIndex);
                      },
                      child: AzkerItemBuilder(
                          azkarTitle: Azkary.azkarSabah[zSabahIndex],
                          azkarDes: Azkary.azkarSabahDes[zSabahIndex],
                          azkarRepate: con.zSabahIndex >= Azkary.azkarSabahRepate[zSabahIndex]?'0':'${Azkary.azkarSabahRepate[zSabahIndex]}',
                        color: con.zSabahIndex >= Azkary.azkarSabahRepate[zSabahIndex]?  const Color(AppStyle.yellowColor):const Color(AppStyle.primaryColor),
                      ),

                    );
                  },
                  separatorBuilder: (context, zSabahIndex) =>  SizedBox(
                        height: 15.h,
                      ),
                  itemCount: Azkary.azkarSabah.length),
            )
          ],
        ),
      ),
    );
  }
}
