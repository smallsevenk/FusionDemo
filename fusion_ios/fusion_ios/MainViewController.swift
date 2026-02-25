//
//  MainViewController.swift
//  Runner
//
//  Created by gtbluesky on 2024/4/9.
//

import Foundation
import fusion

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        newButton(button: UIButton(), offsetY: -75, title: "Native 普通页面场景", action: #selector(secondClick(btn:)))
        newButton(button: UIButton(), offsetY: -25, title: "Flutter 页面场景", action: #selector(click0(btn:)))
        FusionEventManager.instance.register("custom_event", callback: onReceive)
    }
     
    let onReceive: FusionEventCallback = { args in
        NSLog("onReceive: args=\(String(describing: args))")
    }

    private func newButton(button: UIButton, offsetY: CGFloat, title: String, action: Selector) {
        button.setTitle(title, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.sizeToFit()
        button.center = CGPoint(x: view.center.x, y: view.center.y + offsetY)
        button.addTarget(self, action: action, for: .touchUpInside)
        view.addSubview(button)
    }

    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func secondClick(btn: UIButton) {
        FusionNavigator.push(
            "/nr_second",
            routeArgs: ["title": "iOS Native Page"],
            routeType: .adaption
        )
    }

    @IBAction func click0(btn: UIButton) {
        FusionNavigator.push(
            "/fr_first",
            routeArgs: ["title": "iOS Flutter Page"],
            routeType: .adaption
        )
    }

    @IBAction func click1(btn: Any) {
        FusionNavigator.push(
            "/transparent",
            routeArgs: ["title": "iOS Flutter Page", "transparent": true],
            routeType: .flutterWithContainer
        )
    }

    @IBAction func click2(btn: Any) {
        FusionNavigator.push(
            "/native_tab_fixed",
            routeType: .native
        )
    }
    
    deinit {
        FusionEventManager.instance.unregister("custom_event")
    }
}

