import 'package:flutter/material.dart';
import 'package:fusion/fusion.dart';

class SecondPage extends StatefulWidget {
  final Map<String, dynamic>? args;
  const SecondPage({super.key, this.args});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          FusionNavigator.push(
            '/nr_second',
            routeArgs: {'from': 'second page'},
            routeType: FusionRouteType.native,
          );
        },
        child: Text('second page'),
      ),
    );
  }
}
