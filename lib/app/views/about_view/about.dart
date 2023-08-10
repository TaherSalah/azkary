import 'package:azkary/app/shard/exports/all_exports.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(), child: AboutItemBuilder()),
    );
  }
}