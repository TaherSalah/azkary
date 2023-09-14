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
                        azkarRepate: con.quranIndex >= Azkary.rokiaQuranRepe[quranCurrentIndex]?'0':'${Azkary.rokiaQuranRepe[quranCurrentIndex]}',
                      color: con.quranIndex >= Azkary.rokiaQuranRepe[quranCurrentIndex]?  const Color(AppStyle.yellowColor):Color(AppStyle.primaryColor),

                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    SizedBox(
                      height: 15.h,
                    ),
                itemCount: Azkary.rokiaQuranTitle.length),
          )
        ],
      ),
    );
  }


    }