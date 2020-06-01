//
//  LoginVC.swift
//  Smack
//
//  Created by kamrujjaman Joy on 5/31/20.
//  Copyright © 2020 kamrujjaman Joy. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    @IBAction func dontHaveAnAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
}
