import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:azkary/app/shard/navigation.dart';
import 'package:azkary/app/views/simple_count.dart';

class AzkarSabah extends StatefulWidget {
  const AzkarSabah({super.key});

  @override
  State<AzkarSabah> createState() => _AzkarSabahState();
}

class _AzkarSabahState extends State<AzkarSabah> {
  @override
  Widget build(BuildContext context) {
    final cont = Provider.of<AzkarProvider>(context);
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
                      navigate(context, AzkarSimpleCounter(azkarConten: azkarSabahDes[index],));
                    },
                    child: AzkerItemBuilder(
                        azkarTitle: azkarSabah[index],
                        azkarDes: azkarSabahDes[index],
                        azkarRepate: azkarSabahRepate[index]),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 15,
                    ),
                itemCount: azkarSabah.length),
          )
        ],
      ),
    );
  }
}
