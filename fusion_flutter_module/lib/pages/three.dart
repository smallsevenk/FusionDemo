import 'package:flutter/material.dart';
import 'package:fusion/fusion.dart';

class ThreePage extends StatefulWidget {
  final Map<String, dynamic>? args;
  const ThreePage({super.key, this.args});

  @override
  State<ThreePage> createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          FusionNavigator.popUntil('/nr_second');
        },
        child: Text('three page'),
      ),
    );
  }
}
