import 'package:flutter/material.dart';
import 'package:fusion/fusion.dart';

class FirstPage extends StatefulWidget {
  final Map<String, dynamic>? args;
  const FirstPage({super.key, this.args});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          FusionNavigator.push('/nr_second', routeArgs: {'from': 'fr_first page'});
        },
        child: Text('first page'),
      ),
    );
  }
}
