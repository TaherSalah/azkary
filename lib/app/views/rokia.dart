import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:azkary/app/shard/navigation.dart';
import 'package:azkary/app/views/rokia_counter.dart';

class RokiaScreen extends StatelessWidget {
  const RokiaScreen({super.key});

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
                  return GestureDetector(
                    onTap: () {
                      navigate(
                          context,
                          RokiaCounter(
                              azkarConten: rokiaQuranTitle[index],
                              azkarContenDes: rokiaQuranRawi[index],
                              azkarContenRepate:  rokiaQuranRepe[index]));
                    },
                    child: AzkerItemBuilder(
                        azkarTitle: rokiaQuranTitle[index],
                        azkarDes: rokiaQuranRawi[index],
                        azkarRepate: rokiaQuranRepe[index]),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 15,
                    ),
                itemCount: rokiaQuranTitle.length),
          )
        ],
      ),
    );
  }
}
