//
//  PageViewCtrl.swift
//  Quote Tag
//
//  Created by Dimeji Situ on 2019-07-05.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit

class PageViewCtrl: UIPageViewController,UIPageViewControllerDelegate, UIPageViewControllerDataSource {

    lazy var subViewControllers: [UIViewController] = {
        return [
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PageOneVC") as! PageOneVC, UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PageTwoVC") as! PageTwoVC, UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PageThreeVC") as! PageThreeVC, UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PageFourVC") as! PageFourVC, UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PageFiveV") as! PageFiveV
            
        ]
    }()
    
    var currentInd = 0
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        dataSource = self //as! UIPageViewControllerDataSource
        delegate = self //as! UIPageViewControllerDelegate
        setViewControllerFromIndex(index: 0)
    }
    
    func setViewControllerFromIndex(index: Int){
        self.setViewControllers([subViewControllers[index]], direction: UIPageViewController.NavigationDirection.forward, animated: true, completion: nil)
    }
    
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        
        return subViewControllers.count
    }
    
    //VC BEFORE
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex: Int =  subViewControllers.firstIndex(of: viewController) ?? 0
        
        
//        print("PPPPPPPPPPPPP->",self.parent)
//        print("PPPPPPPPPPPPP->",self.parent)

        
        if currentIndex == 0{
            currentInd = 0
            print("Single Player Mode")
        }
        else if currentIndex == 1{
            currentInd = 1
            print("Multi Player Mode")
        }
        else if currentIndex == 2{
            currentInd = 2
            print("SABOUT Mode")
        }
        
        if currentIndex <= 0{
            return nil
        }
        return subViewControllers[currentIndex - 1]
    }
    
    //VC AFTER
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentIndex: Int = subViewControllers.firstIndex(of: viewController) ?? 0
        if currentIndex == 0{
            currentInd = 0
            print("Single Player Mode")
        }
        else if currentIndex == 1{
            currentInd = 1
            print("Multi Player Mode")
        }
        else if currentIndex == 2{
            currentInd = 2
            print("ABOUT Mode")
        }
        if currentIndex >= subViewControllers.count-1{
            return nil
        }
        return subViewControllers[currentIndex+1]
        
    }
    
    
    

}
