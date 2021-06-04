//
//  MultiQuizViewController.swift
//  QuoteTag
//
//  Created by Dimeji Situ on 2019-06-19.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//
//APP ID
//   ca-app-pub-8673219208295261~3603608094
//
// Unit ID INTERSTITIAL
//   ca-app-pub-8673219208295261/6368607890

import UIKit
import GoogleMobileAds

class MultiQuizViewController: UIViewController, GADInterstitialDelegate {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreTag: UILabel!
    @IBOutlet weak var completionBar: UIView!
    @IBOutlet weak var bonusImg: UIImageView!
    
    var quoteList: [Quotes] = []
    var quoteHold : [Quotes] = []
    var options: [String] = []
    var imgList: [UIImageView] = [] //list of images
    var player: String = ""
    var score1: Int = 0
    var score2: Int = 0
    var tap1: Int = 0
    var tap2: Int = 0
    var count : Int = 0 //number of initial questions to be done
    var num: Int = 0 //number of questions done
    var imgname = ""
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var img0: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //interstitial ad
    var interstitial: GADInterstitial!
    
    override func viewDidLoad() {
        completionBar.frame.size.width = (view.frame.size.width / CGFloat(count)) * CGFloat(num)
        super.viewDidLoad()
        imgList  = [img0,img1,img2, img3]
        quoteHold.append(quoteList.popLast()!)
        questionLabel.text = quoteHold[0].quote
        if (player == "player1"){
        scoreTag.text = String(score1)
        }else if (player == "player2"){
            scoreTag.text = String(score2)
        }
        run()

    }
    override func viewDidAppear(_ animated: Bool) {
        self.interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        
        let request = GADRequest()
        interstitial.load(request)
        
    }
    
    func run(){
        self.bonusImg.image = UIImage.init(named: imgname)

        options = quoteHold[0].falseContenders
        options.append(quoteHold[0].ans)
        options.shuffle()
        button0.setTitle(options[0], for: .normal)
        button1.setTitle(options[1], for: .normal)
        button2.setTitle(options[2], for: .normal)
        button3.setTitle(options[3], for: .normal)
    }
    
    func enableButtons(){
        button0.isEnabled = true
        button1.isEnabled = true
        button2.isEnabled = true
        button3.isEnabled = true
    }
    func disableButtons(){
        button0.isEnabled = false
        button1.isEnabled = false
        button2.isEnabled = false
        button3.isEnabled = false
    }
    
    @IBAction func optionPressed(_ sender: UIButton) {
        
        //picked CORRECT ANSWER
        if (options[sender.tag] == quoteHold[0].ans){
            print("hhhhhallllelllujjahhhh")
            imgList[sender.tag].image = UIImage.init(named: "check")
            if (player == "player1"){
                score1 += 50
            }else if (player == "player2"){
                score2 += 50
            }
            
        }else{//PICKED WRONG ANSWER
            for i in 0...options.count-1{
                if (options[i] != quoteHold[0].ans){
                    imgList[i].image = UIImage.init(named: "Checkmarkempty")
                }
                else{
                    imgList[i].image = UIImage.init(named: "check")
                }
            }
            if (player == "player1"){
                score1 -= 25
            }else if (player == "player2"){
                score2 -= 25
            }
        }
        backToTap()
    }
    
    func backToTap(){
        
        disableButtons()

        // pause for 1.5 seconds before next question
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3/2), execute: {
            if ( (self.num >=  self.count) && (self.score1 != self.score2) ){
                self.end()
            }else if(self.score1 == self.score2 && self.num >=  self.count){
                self.imgname = "bonus"
                //INSERT AN AD HERE
                //INSERT AN AD HERE
                //TEST UNIT ID:: ca-app-pub-3940256099942544/4411468910
                if self.interstitial.isReady{
                    self.interstitial.present(fromRootViewController: self)
                    self.interstitial = self.createAd()
                }
                //INSERT AN ADD HERE
                //INSERT AN ADD HERE
                    self.goBack()
                    
            }
            else{
                self.goBack()
            }
        })
    }
    func goBack(){
        performSegue(withIdentifier: "backToTap", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backToTap"{
            let desVc = segue.destination as! MultiViewController
            num = num + 1
            desVc.multiQB = quoteList
            desVc.passPlayer = player
            desVc.score1 = score1
            desVc.score2 = score2
            desVc.tap1 = tap1
            desVc.tap2 = tap2
            desVc.count = count
            desVc.num = num
            desVc.imgname = imgname
        }
        
        else if (segue.identifier) == "congrats"{
            let destVC = segue.destination as! WinnerViewController
            
            if score1 > score2{
                destVC.text = "PLAYER 1 IS VICTORIOUS WITH \(score1) Points\n\n may we meet again player 2"
                if (count >= 30){
                    destVC.score = score1
                }
            }else if score2 > score1{
                destVC.text = "PLAYER 2 IS VICTORIOUS WITH \(score2) Points\n\n may we meet again player 1"
                if (count >= 30){
                    destVC.score = score2
                }
            }
        }
    }
    
    func end(){
        performSegue(withIdentifier: "congrats", sender: self)
    }
    
    //create new interstitial ad here
    func createAd() -> GADInterstitial {
        let inter = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        inter.load(GADRequest())
        return inter
    }
}
