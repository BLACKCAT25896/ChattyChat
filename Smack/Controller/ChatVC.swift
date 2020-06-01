//
//  ChatVC.swift
//  Smack
//
//  Created by kamrujjaman Joy on 5/30/20.
//  Copyright © 2020 kamrujjaman Joy. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    //outlets
    
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())

       
    }
    

   

}
