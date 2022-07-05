
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUp: UIButton! {
        didSet {
            signUp.layer.cornerRadius = 10
            signUp.backgroundColor = .white
            signUp.setTitleColor(.black, for: .normal)
        }
    }
    @IBOutlet weak var logIn: UIButton! {
        didSet {
            logIn.layer.cornerRadius = 10
            logIn.backgroundColor = .systemBlue
            logIn.setTitleColor(.black, for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

