//
//  AppDelegate.swift
//  fusion_ios
//
//  Created by andy on 2026/2/3.
//  -no-verify-emitted-module-interface

import Flutter
import UIKit
import fusion

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        window = UIWindow()
        window?.backgroundColor = .white
        return true
    }

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        // 初始化Fusion
        let routePusher = RoutePusher()
        Fusion.instance.install(routePusher)
        
        if window?.rootViewController == nil {
            let naviController = FusionNavigationController(rootViewController: FirstViewController())
            naviController.restorationIdentifier = "naviController"
            window?.rootViewController = naviController
        }
        window?.makeKeyAndVisible()
        return true
    }
 
}

// 扩展AppDelegate以支持共享实例访问
extension AppDelegate {
    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
}
