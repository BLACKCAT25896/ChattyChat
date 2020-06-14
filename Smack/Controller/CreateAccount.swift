//
//  CreateAccount.swift
//  Smack
//
//  Created by kamrujjaman Joy on 6/1/20.
//  Copyright © 2020 kamrujjaman Joy. All rights reserved.
//

import UIKit

class CreateAccount: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWINT_TO_CHANNEL, sender: nil)
    }
    
}
