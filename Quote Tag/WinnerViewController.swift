//
//  WinnerViewController.swift
//  Smite
//
//  Created by Dimeji Situ on 2019-06-26.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//
import UIKit

class WinnerViewController: UIViewController {
    
    @IBOutlet weak var highscoreLabel: UILabel!

    @IBOutlet weak var winnerLabel: UILabel!
    var text: String = "Player x is the winner\n nice try player 2"
    var highScore = 0
    var score = 0
//    var segue: UIStoryboardSegue?
//    var desVc: ModeViewController?
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        //desVc = segue!.destination as! ModeViewController

        winnerLabel.text = self.text
        medalFall()





    }
    
    func medalFall(){
        
        let emitterLayer = CAEmitterLayer()
        
        emitterLayer.emitterPosition = CGPoint(x: view.frame.width/2, y: -30)
        emitterLayer.emitterSize = CGSize(width: view.frame.width, height: 2)
        
        let cell = CAEmitterCell()
        cell.birthRate = 5
        cell.lifetime = 40
        cell.scale = 0.05
        cell.velocity = CGFloat(65)
        cell.emissionLongitude = (180 * (.pi/180))
        cell.emissionRange = CGFloat.pi * 1.5 //variation in direction
        cell.contents = UIImage(named: "medal")!.cgImage
        emitterLayer.emitterCells = [cell]
        view.layer.addSublayer(emitterLayer)
    }
    
    @IBAction func donePressed(_ sender: UIButton) {
        
        //performSegue(withIdentifier: "backHome", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "backHome"{
//            let desVc = segue.destination as! ModeViewController
//            desVc.highScore = Int(highscoreLabel.text!)!
//            print("PREPARING FOR SEGUE WITH HIGH SCORE = ", highscoreLabel.text!)
//        }
    }
  
        override func viewDidAppear(_ animated: Bool) {
            //GETTER
            if let y = UserDefaults.standard.integer(forKey: "highscore") as? Int{
                highScore = y
                highscoreLabel.text = String(highScore)
            }
            //SETTER
            if score > highScore{
                highScore = score
                highscoreLabel.text = String(highScore)
                UserDefaults.standard.set(highScore, forKey: "highscore")
            }
            
            print("HIGHSCORELABEL ==",highscoreLabel.text)
            
            print("HIGHSCORE->",highScore)
            print("SCORE->",score)
        }


    
}
