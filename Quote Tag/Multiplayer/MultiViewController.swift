//
//  MultiViewController.swift
//  QuoteTag
//
//  Created by Dimeji Situ on 2019-06-15.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
// 

import UIKit
import AVFoundation

class MultiViewController: UIViewController {

    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var center: UIImageView!
    
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    var player1 = Player(n: "pLAYER uNo", c: 0)
    var player2 = Player(n: "pLAYER dOs", c: 0)
    var first : [Player] = [] //who tapped first
    var passPlayer: String = ""
    var score1: Int = 0
    var score2: Int = 0
    var timeOp : [Int] = [5,6,7]
    var audioPlayer : AVAudioPlayer?
    var num: Int = 1
    var imgname : String = ""
    var count: Int = 0
    var list : [String ] = []
    var pl : [UIImageView] = []
    var multiQB :[Quotes] = []
    
    var tap1: Int = 0
    var tap2: Int = 0
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    private func initializePlayer() -> AVAudioPlayer? {
        guard let path = Bundle.main.path(forResource: "music", ofType: "mp3") else {
            return nil
        }

        return try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
    }
        
    override func viewDidLoad() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)

        
        audioPlayer = initializePlayer()
        audioPlayer?.play()

        super.viewDidLoad()
        first.append(player2) 
        pl = [img1, img2]
        
        print(list)
        center.image = UIImage.init(named: "ready")
        img2.image = UIImage.init(named: "blue")
        img1.image = UIImage.init(named: "pink")

   
        for index in list{
            if index == "Avengers"{
                let av = Avengers()
                multiQB.append(contentsOf: (av).list )
            }else if index == "DC Universe"{
                let dc = DCUniverse()
                multiQB.append(contentsOf: (dc).list )
            }else if index == "Game Of Thrones"{
                let got = GameOfThrones()
                multiQB.append(contentsOf: (got).list )
            }else if index == "Umbrella Academy"{
                let ua = UmbrellaAcademy()
                multiQB.append(contentsOf: (ua).list )
            }else if index == "The 100"{
                let the100 = The100()
                multiQB.append(contentsOf: (the100).list )
            }else if index == "Big Bang Theory"{
                let bbt = BigBangTheory()
                multiQB.append(contentsOf: (bbt).list )
            }else if index == "Fast And Furious"{
                let faf = FastAndFurious()
                multiQB.append(contentsOf: (faf).list )
            }else if index == "Stranger Things"{
                let st = StrangerThings()
                multiQB.append(contentsOf: (st).list )
            }else if index == "Agents Of Shield"{
                let maos = AgentsOfShield()
                multiQB.append(contentsOf: (maos).list )
            }else if index == "Grownish"{
                let gr = Grownish()
                multiQB.append(contentsOf: (gr).list )
            }
        }
        multiQB.shuffle()
        print("aaaaaaaaaaa->  ",multiQB.count)
        print(multiQB)
        update()
        
        if (true){
            button2.isEnabled = false
            button1.isEnabled = false
            timeOp.shuffle()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(timeOp[0]), execute: {
                self.center.image = UIImage.init(named: "go")
                self.button2.isEnabled = true
                self.button1.isEnabled = true
                self.audioPlayer?.play()
            })
            audioPlayer?.play()
        }

    }
    
    
    @IBAction func choose(_ sender: UIButton) {
        if (sender.tag == 0){
            img1.image = UIImage.init(named: "green")
            button2.isEnabled = false
        }else{
            img2.image = UIImage.init(named: "green")
            button1.isEnabled = false;
        }
    }
    
    @IBAction func player1Choose(_ sender: UIButton) {
        img1.image = UIImage.init(named: "green")
        first[0] = player1

        if (img2.image == UIImage.init(named: "green")){
            button1.isEnabled = false;
        }
        contingency()
    }
    
    @IBAction func player2Choose(_ sender: UIButton) {
        img2.image = UIImage.init(named: "green")
        first[0] = player2
        if (img1.image == UIImage.init(named: "green")){
            button2.isEnabled = false;
        }
        contingency()
    }
    
    //incase both are pressed at the same time
    //randomly pick 1
    func contingency(){
        update()
        if (img2.image == UIImage.init(named: "green")) && (img1.image == UIImage.init(named: "green")){

                pl.shuffle()
            if (pl[0] == img1){
                pl[0].image = UIImage.init(named: "pink")
                first[0] = player2
                button1.isEnabled = false
            }
           else if (pl[0] == img2){
                pl[0].image = UIImage.init(named: "blue")
                first[0] = player1
                button2.isEnabled = false
            }
        }
        print("MULTIQV.CURRENT.QUOTE: ->",multiQB.count)
        if (multiQB.count != 0){
            performSegue(withIdentifier: "multiQuiz", sender: self)
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "multiQuiz"{
            let desVC = segue.destination as! MultiQuizViewController
            print("Player is ->>",first[0].name)
            desVC.quoteList = multiQB
            desVC.count = count
            desVC.score1 = score1
            desVC.score2 = score2
            desVC.num = num
            desVC.imgname = imgname
            if (first[0].name == player1.name){
                desVC.player = "player1"
                desVC.tap1 = tap1 + 1
                desVC.tap2 = tap2
            }else{
                desVC.player = "player2"
                desVC.tap2 = tap2 + 1
                desVC.tap1 = tap1
            }
            
        }
        button1.isEnabled = true
        button2.isEnabled = true
    }
    
    func update(){

            player1.currentScore = score1
            button1.setTitle("\(player1.currentScore)  Taps: \(tap1)", for: .normal)
            print("P1::", player1.currentScore )
        ////////////////////////////////////////////////////////////
            player2.currentScore = score2
            button2.setTitle("\(player2.currentScore)  Taps: \(tap2)", for: .normal)
            print("P2::", player2.currentScore )

    }

    
}
