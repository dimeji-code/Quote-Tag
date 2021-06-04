//
//  ModeViewController.swift
//  Quote Tag
//
//  Created by Dimeji Situ on 2019-05-30.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//
//  APP ID
//  ca-app-pub-8673219208295261~3603608094
//
//AD UNIT ID
//ca-app-pub-8673219208295261/6537974764


import UIKit
import GoogleMobileAds

class ModeViewController: UIViewController  {

    @IBOutlet weak var bannerView: GADBannerView!
    
    @IBOutlet weak var scoreBoard: UIView!
    @IBOutlet weak var pageControl: UIPageControl!    
    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var highscoreLabel: UILabel!
    var highScore: Int = 0
    
    override func viewDidLoad() {
        self.navigationController?.setNavigationBarHidden(false, animated: false)

        super.viewDidLoad()
       //dont forget to change from TEST ID
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
//        print("HIGH SCORE IS HERE AS -> ", highScore)
//        highscoreLabel.text = String(highScore)
        
        scoreBoard.layer.shadowColor = UIColor.black.cgColor
        scoreBoard.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        scoreBoard.layer.shadowRadius = 5.0
        scoreBoard.layer.shadowOpacity = 1.8
        scoreBoard.layer.masksToBounds = false
        
    }
    

        @IBAction func unwindToMVC(_ sender: UIStoryboardSegue){


        }
    
}
extension ModeViewController: GADBannerViewDelegate{

    func adViewDidReceiveAd(_ bannerView: GADBannerView){
        print("Recieved Ad")
    }
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWIthError error: GADRequestError) {
        print(error)
    }
    
}

