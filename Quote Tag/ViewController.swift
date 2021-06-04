//
//  ViewController.swift
//  Quote Tag
//
//  Created by Dimeji Situ on 2019-05-20.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
      
        
        
        
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        if launchedBefore  {
            print("Not first launch.")
            performSegue(withIdentifier: "main", sender: self)

        } else {
            print("First launch, setting UserDefault.")
            UserDefaults.standard.set(true, forKey: "launchedBefore")
            performSegue(withIdentifier: "intro", sender: self)

        }
        
    }
    


}

