import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var save: UIButton! {
        didSet {
            save.layer.cornerRadius = 20
        }
    }
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var location: UITextField!
    
    lazy var textFieldArray: [UITextField] = [userName, password, email,location]
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextfieldDesign()
    }
    
    func setTextfieldDesign() {
        textFieldArray.forEach { $0.underlined(color: .systemGray) }
    }
}

extension UITextField {
    func underlined(color: UIColor) {
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = color.cgColor
        /* შევქმნათ მონაკვეთი რომლის საწყისი წერტილი იქნება (0, self.frame.size.height - width)
         ხოლო ბოლო წერტილი (self.frame.size.width, height: self.frame.size.height) */
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)

        border.borderWidth = width
        // დავამატოთ TextField ის leyer შექმნილი მონაკვეთი (border)
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    

}
