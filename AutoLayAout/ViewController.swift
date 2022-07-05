//
//  ViewController.swift
//  AutoLayAout
//
//  Created by Admin on 7/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUp: UIButton! {
        didSet {
            signUp.layer.cornerRadius = 10
            signUp.backgroundColor = .systemBlue
            signUp.setTitleColor(.black, for: .normal)
        }
    }
    @IBOutlet weak var logIN: UIButton! {
        didSet {
            logIN.layer.cornerRadius = 10
            logIN.backgroundColor = .white
            logIN.setTitleColor(.black, for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

