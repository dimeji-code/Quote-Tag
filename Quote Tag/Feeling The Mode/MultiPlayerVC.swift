//
//  MultiPlayerViewController.swift
//  Quote Tag
//
//  Created by Dimeji Situ on 2019-06-30.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit

class MultiPlayerVC: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var pgctrl: UIPageControl!
    
    override func viewDidLoad() {

        super.viewDidLoad()

        img.layer.shadowColor = UIColor.black.cgColor
        img.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        img.layer.shadowRadius = 5.0
        img.layer.shadowOpacity = 1.8
        img.layer.masksToBounds = false
        
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        button.layer.shadowRadius = 5.0
        button.layer.shadowOpacity = 1.8
        button.layer.masksToBounds = false
        
        pgctrl.layer.shadowColor = UIColor.black.cgColor
        pgctrl.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        pgctrl.layer.shadowRadius = 5.0
        pgctrl.layer.shadowOpacity = 1.8
        pgctrl.layer.masksToBounds = false
    }
    

}
