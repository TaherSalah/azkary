import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:azkary/app/views/azan_view/azan.dart';

class DefControllerTabs extends StatelessWidget {
  const DefControllerTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: mainAppBarWidget(),
          body: const TabBarView(
            children: [
              AzanView(),
              AzkarSabah(),
              AzkarMassa(),
              PrayerAzkar(),
              SleepAzkar(),
              AzkarOthers(),
              RokiaScreen(),
              AzkarCounter(),
              About(),
            ],
          ),
        ),
      ),
    );
  }
}
