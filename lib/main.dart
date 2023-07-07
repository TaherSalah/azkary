import 'package:azkary/app/shard/exports/all_exports.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => AzkarProvider()..fetchAzkarMassa()..fetchAzkarSabah()..fetchAzkarPostPrayer()..fetchAzkar(),
            )
          ],
          child: MaterialApp(


            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.lime,
            ),

            routes: {
              'home': (context) => const HomeScreen(),
              'splash': (context) => const SplashScreen(),
            },
            initialRoute: 'splash',
          ),
        );
      },

    );
  }
}
