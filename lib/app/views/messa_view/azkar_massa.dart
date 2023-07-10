import 'package:azkary/app/shard/exports/all_exports.dart';

class AzkarMassa extends StatelessWidget {
  const AzkarMassa({super.key});

  @override
  Widget build(BuildContext context) {
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
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        navigate(
                            context,
                            MassaCounter(
                                azkarConten: azkarMassa[index],
                                azkarContenDes: azkarMassaDes[index],
                                azkarContenRepate: azkarMassaRepate[index]));
                      },
                      child: AzkerItemBuilder(
                          azkarTitle: azkarMassa[index],
                          azkarDes: azkarMassaDes[index],
                          azkarRepate: azkarMassaRepate[index]),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15.h,
                      ),
                  itemCount: azkarMassa.length),
            )
          ],
        ));
  }
}
