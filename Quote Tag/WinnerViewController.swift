//
//  WinnerViewController.swift
//  Smite
//
//  Created by Dimeji Situ on 2019-06-26.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit

class WinnerViewController: UIViewController {

    @IBOutlet weak var winnerLabel: UILabel!
    var text: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        // cell.velocity = 100
        cell.scale = 0.05
        cell.velocity = CGFloat(60)
        cell.emissionLongitude = (180 * (.pi/180))
        
        cell.emissionRange = CGFloat.pi * 1.5 //variation in direction
        
        cell.contents = UIImage(named: "medal")!.cgImage
        
        emitterLayer.emitterCells = [cell]
        
        view.layer.addSublayer(emitterLayer)
    }

    @IBAction func donePressed(_ sender: UIButton) {
        
    }
    
    
}
