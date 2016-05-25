//
//  SettingUserDefaults.swift
//  shoplist
//
//  Created by Admin on 02.05.16.
//  Copyright © 2016 Bobrovnikov. All rights reserved.
//

import Foundation

class SettingsUserDefaults{
    
    static var alphabeticalSortIncomplete: Bool {
        return NSUserDefaults.standardUserDefaults().boolForKey("alphabeticalSortIncomplete")
    }
    
    static var alphabeticalSortComplete: Bool {
        return NSUserDefaults.standardUserDefaults().boolForKey("alphabeticalSortComplete")
    }
    
    static var autoCapitalisation: Bool {
        return NSUserDefaults.standardUserDefaults().boolForKey("autoCapitalisation")
    }
    
    static var dissableScreenLock: Bool {
        return NSUserDefaults.standardUserDefaults().boolForKey("dissableScreenLock")
    }
}