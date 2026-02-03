
import UIKit
import fusion

@main
class AppDelegate: UIResponder, UIApplicationDelegate, FusionRouteDelegate {

    private var flutterEngine: FlutterEngine?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        flutterEngine = FlutterEngine(name: "io.flutter", project: nil)
        flutterEngine?.run(withEntrypoint: nil)
        Fusion.instance.install(self)
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }

    func pushNativeRoute(name: String, args arguments: Dictionary<String, Any>?) {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else { return }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let targetVC = storyboard.instantiateViewController(withIdentifier: name) as? UIViewController {
            if let navController = window.rootViewController as? UINavigationController {
                navController.pushViewController(targetVC, animated: true)
            }
        }
    }
    
    func pushFlutterRoute(name: String, args arguments: Dictionary<String, Any>?) {
        let flutterRoute = "/$name"
        var flutterArguments: [String: Any] = [:]
        if let params = arguments {
            flutterArguments = params
        }

        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else { return }
        
        if let navigationController = window.rootViewController as? UINavigationController {
            let flutterViewController = FlutterViewController()
            flutterViewController.setInitialRoute(flutterRoute)
            
            if let engine = flutterEngine {
                flutterViewController.engine = engine
            }
            
            navigationController.pushViewController(flutterViewController, animated: true)
        }
    }
}
