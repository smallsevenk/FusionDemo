
import UIKit

class SecondViewController: UIViewController {
    
    private var message: String = ""
    
    convenience init(message: String) {
        self.init()
        self.message = message
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "原生页面"
        view.backgroundColor = UIColor.orange
    }
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        title = "原生页面"
        
        let label = UILabel()
        label.text = "接收到的参数: \(message)"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
