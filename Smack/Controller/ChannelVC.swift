//
//  ChannelVC.swift
//  Smack
//
//  Created by kamrujjaman Joy on 5/30/20.
//  Copyright © 2020 kamrujjaman Joy. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    //Outlets

  
    @IBOutlet weak var loginBtn: UIButton!
    
    @IBAction func prepareForUnWind(segue : UIStoryboardSegue){}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }
    

    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    

}
