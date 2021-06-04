//
//  AlertViewController.swift
//  Smite
//
//  Created by Dimeji Situ on 2019-05-27.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func didTapCancel(_ sender: UIStoryboardSegue) {
       // dismiss(animated: true)
    }
    
    @IBAction func didTapRestart(_ sender: Any) {
         dismiss(animated: true)

    }
}
