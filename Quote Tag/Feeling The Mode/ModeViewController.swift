//
//  ModeViewController.swift
//  Smite
//
//  Created by Dimeji Situ on 2019-05-30.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit

class ModeViewController: UIViewController , UIScrollViewDelegate {

    
    
    
    @IBOutlet weak var pageControl: UIPageControl!    
    @IBOutlet weak var myView: UIView!
    
    var images = ["sp" , "mp","about" ]
    var currentVCIndex = 0
    var testPVC: TestPageViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       print("alllllllllllllooooooooohhhhh->", myView.index(ofAccessibilityElement: testPVC) )
        print("ooooooooooooooo->",testPVC?.currentInd)
    }
    
    
    
        @IBAction func unwindToMVC(_ sender: UIStoryboardSegue){
        }

    
    
}
