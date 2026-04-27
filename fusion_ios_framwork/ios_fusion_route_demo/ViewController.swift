
import UIKit
import fusion

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        title = "首页"
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        let nativeButton = UIButton(type: .system)
        nativeButton.setTitle("跳转到原生页面", for: .normal)
        nativeButton.titleLabel?.font = .systemFont(ofSize: 18)
        nativeButton.backgroundColor = .systemBlue
        nativeButton.setTitleColor(.white, for: .normal)
        nativeButton.layer.cornerRadius = 10
        nativeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nativeButton.addTarget(self, action: #selector(pushNativePage), for: .touchUpInside)
        
        let flutterButton = UIButton(type: .system)
        flutterButton.setTitle("跳转到Flutter页面", for: .normal)
        flutterButton.titleLabel?.font = .systemFont(ofSize: 18)
        flutterButton.backgroundColor = .systemGreen
        flutterButton.setTitleColor(.white, for: .normal)
        flutterButton.layer.cornerRadius = 10
        flutterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        flutterButton.addTarget(self, action: #selector(pushFlutterPage), for: .touchUpInside)
        
        stackView.addArrangedSubview(nativeButton)
        stackView.addArrangedSubview(flutterButton)
        
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -40)
        ])
    }
    
    @objc private func pushNativePage() {
        Fusion.instance.pushNativeRoute(name: "SecondViewController", args: ["message": "来自首页的数据"])
    }
    
    @objc private func pushFlutterPage() {
        Fusion.instance.pushFlutterRoute(name: "profile", args: ["userId": 12345, "userName": "张三"])
    }
}
