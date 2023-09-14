import 'package:azkary/app/shard/exports/all_exports.dart';

class AzkarMassa extends StatelessWidget {
  const AzkarMassa({super.key});

  @override
  Widget build(BuildContext context) {
    final con =Provider.of<AzkarProvider>(context);
    return Scaffold(
        // backgroundColor: Colors.black.withOpacity(0.1),
        backgroundColor: const Color(0xffF7FFE5),
        body: Column(
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
