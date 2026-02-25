// 默认路由表，使用默认的 PageRoute
// 使用统一的路由动画

import 'package:fusion/fusion.dart';
import 'package:fusion_flutter_module/main.dart';
import 'package:fusion_flutter_module/pages/first.dart';
import 'package:fusion_flutter_module/pages/second.dart';
import 'package:fusion_flutter_module/pages/three.dart';

const String frFirst = '/fr_first';
const String frSecond = '/fr_second';
const String frThree = '/fr_three';

final Map<String, FusionPageFactory> routeMap = {
  '/': (arguments) => MyHomePage(title: 'Home Page'),
  frFirst: (arguments) => FirstPage(args: arguments),
  frSecond: (arguments) => SecondPage(args: arguments),
  frThree: (arguments) => ThreePage(args: arguments),
};

// 自定义路由表，可自定义 PageRoute
// 比如：某些页面需要特定的路由动画则可使用该路由表
// final Map<String, FusionPageCustomFactory> customRouteMap = {
//   '/mine': (settings) => PageRouteBuilder(
//     opaque: false,
//     settings: settings,
//     pageBuilder: (_, __, ___) => MinePage(arguments: settings.arguments as Map<String, dynamic>?),
//   ),
// };
