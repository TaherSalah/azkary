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
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(AppStyle.primaryColor),
        onPressed: () {
          navigate(context, const DoneScreen());
        },
        child: const Icon(
          Icons.done_all,
          color: Color(AppStyle.whiteColor),
        ),
      ),
      backgroundColor: const Color(0xffF7FFE5),
      body: Hero(
        tag: 'sabah',
        transitionOnUserGestures: true,
        child: Column(
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
