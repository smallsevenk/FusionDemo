
import UIKit
import fusion
import Flutter

class RoutePusher: FusionRouteDelegate {
    func pushNativeRoute(name: String, args arguments: [String : Any]?) {
        NSLog("pushNativeRoute")
        
        var destinationViewController: UIViewController?
        
        switch name {
            case "/second":
                destinationViewController = SecondViewController(message: "navitive  test")
            default:
                // 默认跳转到主页面
                destinationViewController = SecondViewController(message: "navitive  test")
            }
        
        // 传递参数
        if let params = arguments {
            if let navController = UIApplication.shared.keyWindow?.rootViewController as? UINavigationController {
                destinationViewController?.setValuesForKeys(params)
            }
        }
        
        // 跳转页面
        if let targetVC = destinationViewController {
            if let navController = UIApplication.shared.keyWindow?.rootViewController as? UINavigationController {
                navController.pushViewController(targetVC, animated: true)
            }
        }
    }
    
    
    func pushFlutterRoute(name: String, args arguments: [String : Any]?) {
        NSLog("pushFlutterRoute")
   
        // 准备传递给Flutter的参数
        var flutterArguments: [String: Any] = [:]
        if let params = arguments {
            flutterArguments = params
        }
        
        // 跳转到Flutter页面
        if let navigationController = UIApplication.shared.keyWindow?.rootViewController as? UINavigationController {
            // 使用Flutter的导航方法
            guard let engin = Fusion.instance.defaultEngine else {
                return
            }
            let flutterViewController = FlutterViewController(project: nil, initialRoute: name, nibName: nil, bundle: nil)
            
            navigationController.pushViewController(flutterViewController, animated: true)
        }
    }

}
