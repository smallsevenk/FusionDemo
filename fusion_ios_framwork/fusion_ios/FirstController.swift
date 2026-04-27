import UIKit
import fusion

class FirstViewController: UIViewController {

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
        nativeButton.setTitle("跳到原生页面", for: .normal)
        nativeButton.titleLabel?.font = .systemFont(ofSize: 18)
        nativeButton.backgroundColor = .systemBlue
        nativeButton.setTitleColor(.white, for: .normal)
        nativeButton.layer.cornerRadius = 10
        nativeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nativeButton.addTarget(self, action: #selector(toNative), for: .touchUpInside)

        let flutterButton = UIButton(type: .system)
        flutterButton.setTitle("跳到Flutter页面", for: .normal)
        flutterButton.titleLabel?.font = .systemFont(ofSize: 18)
        flutterButton.backgroundColor = .systemGreen
        flutterButton.setTitleColor(.white, for: .normal)
        flutterButton.layer.cornerRadius = 10
        flutterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        flutterButton.addTarget(self, action: #selector(toFultter), for: .touchUpInside)

        stackView.addArrangedSubview(nativeButton)
        stackView.addArrangedSubview(flutterButton)

        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(
                greaterThanOrEqualTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(
                lessThanOrEqualTo: view.trailingAnchor, constant: -40),
        ])
    }
  

    @objc private func toNative() {
        FusionNavigator.push("/nr_second", routeType: .native)
    }

    @objc private func toFultter() {
        FusionNavigator.push("/fr_first", routeArgs: ["userId": 12345, "userName": "张三"])
    }
    
    deinit {
        FusionEventManager.instance.unregister("custom_event")
    }
}
