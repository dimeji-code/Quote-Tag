//
//  PlayViewController.swift
//  Smite
//
//  Created by Dimeji Situ on 2019-05-21.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {
////////////////////////////////////////////////////////////////////////////////////////////////////
    @IBOutlet weak var myLabel: UILabel!
    var qb = QuoteBank()

    let als = AlertService()
    

    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var img0: UIImageView!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var progressBar: UIView!
    
    @IBOutlet weak var score: UILabel!
    var options : [String] = []  // MULTIPLE CHOICE OPTIONS
    var imgOutlets : [UIImageView] = [] // IMAGE OUTLET VARIABLES LIST
    var quoteNum : Int = 0 // QUOTE INDEX IN LIST
    var grade : Int = 0
////////////////////////////////////////////////////////////////////////////////////////////////////

    
    override func viewDidLoad() {
        if (category == "Avengers"){  qb = Avengers() }
        else if (category == "DC Universe"){  qb = DCUniverse() }
        else if (category == "Game Of Thrones") { qb = GameOfThrones()}
        else if (category == "Bible") { qb = Bible()}
        else if (category == "The 100") { qb = The100()}

        score.text = "0/X"
        qb.list.shuffle()
        run()
        super.viewDidLoad()
    }
    
    func disableButtons(){
        button0.isEnabled = false
        button1.isEnabled = false
        button2.isEnabled = false
        button3.isEnabled = false
        progressBar.frame.size.width = ((view.frame.size.width) / (CGFloat)(qb.list.count) ) * CGFloat(quoteNum)

    }
    
    func enableButtons(){
        button0.isEnabled = true
        button1.isEnabled = true
        button2.isEnabled = true
        button3.isEnabled = true
    }

    
    
    @IBAction func answerPicked(_ sender: UIButton) {
        print(sender.titleLabel?.text)
        
        
        //if clicked on correct answer
        if(sender.titleLabel?.text == qb.list[quoteNum].ans){
            //LOOP THROUGH OPTIONS TO FIND POSITION OF SELECTED ONE
                    for i in 0...(options.count-1){
                        if(options[i] == qb.list[quoteNum].ans){
                            //SET CHECK OR UNCHECK IMAGE
                            imgOutlets[i].image = UIImage.init(named: "check")
                            grade = grade + 20
                            score.text = " \(grade)/\(20 * (quoteNum+1))"
                        }
                    }
            print("EUREKA, Right Answer!!!!!")
        }
        
        else{//IF YOU SELECT THE WRONG ANSWER
            for i in 0...(options.count-1){
                if(options[i] != qb.list[quoteNum].ans){
                    //SET RED FALSE IMAGE
                    imgOutlets[i].image = UIImage.init(named: "Checkmarkempty")
                }else{
                    //SHOW CORRECTION
                    imgOutlets[i].image = UIImage.init(named: "check")
                }
            }
            grade = grade - 10
            if(grade < 0){ grade = 0}
            score.text = " \(grade)/\(20 * (quoteNum+1))"
        }
        
        moveOn()
        
    }
    
    func run(){

         //loading options with correct answer and three more filler options
        options = [qb.list[quoteNum].ans,qb.list[quoteNum].falseContenders[0],qb.list[quoteNum].falseContenders[1],qb.list[quoteNum].falseContenders[2]]
        
        imgOutlets  = [img0,img1,img2,img3]
        options.shuffle()
        myLabel.text = qb.list[quoteNum].quote
        button0.setTitle(options[0], for: .normal)
        button1.setTitle(options[1], for: .normal)
        button2.setTitle(options[2], for: .normal)
        button3.setTitle(options[3], for: .normal)
        
        //default uncheck marked images loaded at runtime
        img0.image = UIImage.init(named: "uncheck")
        img1.image = UIImage.init(named: "uncheck")
        img2.image = UIImage.init(named: "uncheck")
        img3.image = UIImage.init(named: "uncheck")

    }
    
    func moveOn(){
        quoteNum = quoteNum + 1
        disableButtons()
        
        if (self.quoteNum == self.qb.list.count ){
            let alertVC = self.als.alert()
            present(alertVC, animated: true)
            //performSegue(withIdentifier: "backHome", sender: self)
        }
        
        // pause for 1.5 seconds before next question
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3/2), execute: {
            self.enableButtons()
            self.startOver()
            self.run()
        })
    }
    
     func startOver(){
        if (quoteNum >= qb.list.count){
        quoteNum = 0
        grade = 0
        score.text = "0/X"
        progressBar.frame.size.width = ((view.frame.size.width) / (CGFloat)(qb.list.count) ) * CGFloat(quoteNum+1)

        }
    }
    
}
