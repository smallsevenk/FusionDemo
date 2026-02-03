//
//  AppDelegate.swift
//  fusion_ios
//
//  Created by andy on 2026/2/3.
//

import UIKit
import fusion

@main
class AppDelegate: UIResponder, UIApplicationDelegate, FusionRouteDelegate  {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Fusion.instance.install(self)
        return true
    }

    // MARK: UISceneSession Lifecycle
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
    func pushNativeRoute(name: String, args arguments: Dictionary<String, Any>?) {
            // 根据路由 name 跳转对应 Native 页面
        }
        
    func pushFlutterRoute(name: String, args arguments: Dictionary<String, Any>?) {
            // 根据路由 name 跳转对应 Flutter 页面
            // 可在 arguments 中存放参数判断是否需要打开透明页面
            // 可在 arguments 中存放参数判断是 push 还是 present
        }

}

