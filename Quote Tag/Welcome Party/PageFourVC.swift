//
//  PageFiveVC.swift
//  Quote Tag
//
//  Created by Dimeji Situ on 2019-07-07.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit

class PageFourVC: UIViewController {

    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        img.image = UIImage.init(named: "d")
        
        img.layer.shadowColor = UIColor.black.cgColor
        img.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        img.layer.shadowRadius = 5.0
        img.layer.shadowOpacity = 1.8
        img.layer.masksToBounds = false
    }


}
