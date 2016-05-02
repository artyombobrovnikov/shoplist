//
//  QuickScrollViewController.swift
//  shoplist
//
//  Created by Admin on 02.05.16.
//  Copyright © 2016 Bobrovnikov. All rights reserved.
//

import UIKit

class QuickScrollViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func touchUpInside(sender: UIButton) {
        
        //When any of the alphabet buttons are clicked, post the notification along with the button that was pressed
        NSNotificationCenter.defaultCenter().postNotificationName(Constants.QuickScrollButtonPressed, object: sender)
    }
}
