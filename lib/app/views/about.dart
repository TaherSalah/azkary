import 'package:azkary/app/shard/widgets/about_item_builder.dart';
import 'package:flutter/material.dart';

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
