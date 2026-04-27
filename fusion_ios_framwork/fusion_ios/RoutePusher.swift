
import UIKit
import fusion
import Flutter

class RoutePusher: FusionRouteDelegate {
    func pushNativeRoute(name: String, args: [String : Any]?) {
        NSLog("pushNativeRoute: name=\(name), args=\(String(describing: args))")
        let appDelegate = AppDelegate.shared
        let window = appDelegate.window
       
        let navController = window?.rootViewController as? UINavigationController
        if name == "/nr_second" {
            let vc = SecondViewController()
            vc.navigationController?.setNavigationBarHidden(false, animated: true)
            navController?.pushViewController(vc, animated: true)
        }
    }
    
    
    func pushFlutterRoute(name: String, args : [String : Any]?) {
        NSLog("pushFlutterRoute: name=\(name), args=\(String(describing: args))")
        let appDelegate = AppDelegate.shared
        let window = appDelegate.window
        let transparent = args?["transparent"] as? Bool ?? false
        let backgroundColor = args?["backgroundColor"] as? Int ?? 0xFFFFFFFF
        let navController = window?.rootViewController as? UINavigationController
        let fusionVc = CustomFusionViewController(routeName: name, routeArgs: args, transparent: transparent, backgroundColor: backgroundColor)
        if transparent {
            navController?.present(fusionVc, animated: false)
        } else {
            navController?.pushViewController(fusionVc, animated: true)
        }
    }

}
