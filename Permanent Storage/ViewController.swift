//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Roydon Jeffrey on 6/11/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("Roy", forKey: "name")
        
        //By default, the data is stored as an 'anyObject' type, so use keyword 'as' with unwrapping to convert data into the data type that you want
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String
        
        print(userName)
        
        let myArray = [1, 7, 11, 17, 23]
        
        NSUserDefaults.standardUserDefaults().setObject(myArray, forKey: "array")
        
        let newArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        
        for x in newArray {
            if x as! Int > 10 {
                print(userName)
            }else {
                print(x)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

