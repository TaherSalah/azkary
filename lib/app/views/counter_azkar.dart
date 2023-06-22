import 'package:azkary/app/shard/widgets/counter_widget_builder.dart';
import 'package:flutter/material.dart';


class AzkarCounter extends StatefulWidget {
  const AzkarCounter({super.key});

  @override
  State<AzkarCounter> createState() => _AzkarCounterState();
}

class _AzkarCounterState extends State<AzkarCounter> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CounterWidgetBuilder());
  }
}
