//
//  Shoplistimage.swift
//  shoplist
//
//  Created by Admin on 05.05.16.
//  Copyright © 2016 Bobrovnikov. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Shoplist: NSManagedObject {
    
    func setShoplistImage(img: UIImage) {
    let data = UIImagePNGRepresentation(img)
    self.image = data
    
}

func getShoplistImg() -> UIImage {
    let img = UIImage(data: self.image!)!
    return img
  }
}
