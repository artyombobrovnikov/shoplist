//
//  NavigationController.swift
//  shoplist
//
//  Created by Admin on 02.05.16.
//  Copyright © 2016 Bobrovnikov. All rights reserved.
//

import UIKit

class NavigationViewController : UINavigationController {
    
    //All these three methods lock the orentation
    override func shouldAutorotate() -> Bool {
        
        return false
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask{
        
        return UIInterfaceOrientationMask.Portrait
    }
    
    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
        
        return UIInterfaceOrientation.Portrait
    }
}
