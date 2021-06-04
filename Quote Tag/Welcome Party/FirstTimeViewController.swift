//
//  FirstTimeViewController.swift
//  Quote Tag
//
//  Created by Dimeji Situ on 2019-07-05.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit

class FirstTimeViewController:  UIViewController{

 
    
    @IBOutlet weak var myView: UIView!
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {

        return .portrait
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       print("CONTENTTTTTS", myView.contentMode.rawValue)
        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        myView.layer.shadowRadius = 5.0
        myView.layer.shadowOpacity = 1.8
        myView.layer.masksToBounds = false
    }
    

    
}


