import 'package:azkary/app/shard/app_style.dart';
import 'package:flutter/material.dart';

class SplashItemBuilder extends StatefulWidget {
  const SplashItemBuilder({super.key});

  @override
  State<SplashItemBuilder> createState() => _SplashItemBuilderState();
}

class _SplashItemBuilderState extends State<SplashItemBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/azkary_logo.png',
                height: 400.0,
                width: 300.0,
              ),
            ],
          ),
          const Text(
            'مرحباٌ بك في رفيقك الاول ',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'cairo',
                fontSize: 20),
          ),
           const SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                color: Color(AppColor.secondaryColor),
                strokeWidth: 10,
              )),
        ],
      ),
    );
  }
}
