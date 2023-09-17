import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:azkary/app/shard/navigation.dart';
import 'package:azkary/app/views/rokia_view/rokia_counter.dart';

class RokiaScreen extends StatefulWidget {
  const RokiaScreen({super.key});

  @override
  State<RokiaScreen> createState() => _RokiaScreenState();
}

class _RokiaScreenState extends State<RokiaScreen> {
  @override
  Widget build(BuildContext context) {
    final con = Provider.of<AzkarProvider>(context);
    return Scaffold(
      backgroundColor: Azkary.rokiaQuranRepe.isNotEmpty? Colors.white : const Color(0xffF7FFE5),
      body: Azkary.rokiaQuranRepe.isNotEmpty? Center(
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
                AppString.KRokiaDaialogText,
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                AppString.KRokiaFeaturesTitle,
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
                itemBuilder: (context, quranCurrentIndex) {
                  return GestureDetector(
                    onTap: () {
                      print('object');
                      setState(() {
                        con.decrementQuran(quranCurrentIndex);
                      });
                    },
                    child: AzkerItemBuilder(
                      azkarTitle: Azkary.rokiaQuranTitle[quranCurrentIndex],
                      azkarDes: Azkary.rokiaQuranRawi[quranCurrentIndex],
                      azkarRepate: con.quranIndex >=
                              Azkary.rokiaQuranRepe[quranCurrentIndex]
                          ? '0'
                          : '${Azkary.rokiaQuranRepe[quranCurrentIndex]}',
                      color: con.quranIndex >=
                              Azkary.rokiaQuranRepe[quranCurrentIndex]
                          ? const Color(AppStyle.yellowColor)
                          : Color(AppStyle.primaryColor),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 15.h,
                    ),
                itemCount: Azkary.rokiaQuranTitle.length),
          )
        ],
      ),
    );
  }
}
