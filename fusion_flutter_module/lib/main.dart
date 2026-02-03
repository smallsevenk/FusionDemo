import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fusion/fusion.dart';
import 'package:fusion_flutter_module/route/life_cycle.dart';
import 'package:fusion_flutter_module/route/navigator_observer.dart';
import 'package:fusion_flutter_module/route/route.dart';
import 'package:fusion_flutter_module/route/transitions_builder.dart';

void main() {
  if (kDebugMode) {
    final PlatformDispatcher dispatcher = PlatformDispatcher.instance;
    print('defaultRouteName=${dispatcher.defaultRouteName}');
  }
  // MyWidgetsFlutterBinding.ensureInitialized();
  Fusion.instance.install();
  FusionAppLifecycleManager.instance.register(MyAppLifecycleListener());
  pageTransitionsBuilder.addAll(const PageTransitionsTheme().builders);
  pageTransitionsBuilder[TargetPlatform.android] = const SlidePageTransitionsBuilder();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FusionApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      navigatorObservers: [MyNavigatorObserver()],
      // interceptors: [MyInterceptor()],
      routeMap: routeMap,
      // customRouteMap: customRouteMap,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text('$_counter', style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
