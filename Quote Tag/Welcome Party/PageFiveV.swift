//
//  P4.swift
//  Quote Tag
//
//  Created by Dimeji Situ on 2019-07-05.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit

class PageFourVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        img.image = UIImage.init(named: "e")
        img.layer.shadowColor = UIColor.black.cgColor
        img.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        img.layer.shadowRadius = 5.0
        img.layer.shadowOpacity = 1.8
        img.layer.masksToBounds = false
    }
    

    @IBAction func startPressed(_ sender: Any) {
    performSegue(withIdentifier: "testRun", sender: self)
    }
    

}
