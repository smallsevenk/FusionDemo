import 'package:flutter/material.dart';

class MyNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint('didPush:route=$route,previousRoute=$previousRoute');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    debugPrint('didPop:route=$route,previousRoute=$previousRoute');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    debugPrint('didRemove:route=$route,previousRoute=$previousRoute');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    debugPrint('didReplace:newRoute=$newRoute,oldRoute=$oldRoute');
  }
}
