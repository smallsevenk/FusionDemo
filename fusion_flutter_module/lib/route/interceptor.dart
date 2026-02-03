// import 'package:fusion/fusion.dart';

// class MyInterceptor extends FusionInterceptor {
//   @override
//   void onPush(FusionInterceptorOption option, InterceptorHandler handler) {
//     if (option.routeName == '/refresh') {
//       handler.reject(option);
//       return;
//     }
//     super.onPush(option, handler);
//   }

//   @override
//   void onPop(FusionInterceptorOption option, InterceptorHandler handler) {
//     if (option.routeName == '/list') {
//       handler.reject(option);
//       return;
//     }
//     super.onPop(option, handler);
//   }
// }
