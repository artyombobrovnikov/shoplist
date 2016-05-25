//
//  AddImageViewController.swift
//  shoplist
//
//  Created by Admin on 05.05.16.
//  Copyright © 2016 Bobrovnikov. All rights reserved.
//


import UIKit
import CoreData

class AddShoplistImageController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    

   

  
    @IBOutlet weak var shoplistImageView: UIImageView!
    

    @IBOutlet weak var createBtn: UIButton!
 
    @IBOutlet weak var addImageBtn: UIButton!

 
    
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        //shoplistImg.layer.cornerRadius = 4.0
      //  shoplistImg.clipsToBounds = true
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        shoplistImageView.image = image
    }
    

    
    @IBAction func addImagePressedd(sender: AnyObject) {
    
 
        
    
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func createBtnPressedd(sender: AnyObject) {
    

        
  
        
        // Save TO the context, then save the context
  
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Shoplist", inManagedObjectContext: context)!
            let shoplist = Shoplist(entity: entity, insertIntoManagedObjectContext: context)
            
                shoplist.setShoplistImage(shoplistImageView.image!)
            
            context.insertObject(shoplist)
            
            do {
                try context.save()
            } catch {
                print("Could not save shoplist")
        }
        
            self.navigationController?.popViewControllerAnimated(true)
        
        
    }
}