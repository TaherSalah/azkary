import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:azkary/app/shard/widgets/main_app_bar.dart';



class DefControllerTabs extends StatelessWidget {
  const DefControllerTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Directionality(

        textDirection: TextDirection.rtl,
        child: Scaffold(

          appBar: mainAppBarWidget(),
          body: const TabBarView(
            children: [
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
