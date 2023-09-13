import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:azkary/app/shard/navigation.dart';
import 'package:azkary/app/views/rokia_view/rokia_counter.dart';

class RokiaScreen extends StatelessWidget {
  const RokiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final con =Provider.of<AzkarProvider>(context);
    return Scaffold(
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
                      print('object');
                      con.mouns;
                      // navigate(
                      //     context,
                      //     RokiaCounter(
                      //         azkarConten: rokiaQuranTitle[index],
                      //         azkarContenDes: rokiaQuranRawi[index],
                      //         azkarContenRepate: '${rokiaQuranRepe[index]}'));
                    },
                    child: AzkerItemBuilder(
                        azkarTitle: Azkary.rokiaQuranTitle[index],
                        azkarDes: Azkary.rokiaQuranRawi[index],
                        azkarRepate:'${Azkary.rokiaQuranRepe[index]}'),
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
