import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/controller/azkar_controller.dart';
import 'app/views/home.dart';
import 'app/views/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AzkarController()..fetchAzkarMassa()..fetchAzkarSabah()..fetchAzkarPostPrayer()..fetchAzkar(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),
        routes: {
          'home': (context) => HomeScreen(),
          'splash': (context) => SplashScreen(),
        },
        initialRoute: 'home',
      ),
    );
  }
}
