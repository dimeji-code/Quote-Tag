//
//  CollectionViewCell.swift
//  Quote Tag
//
//  Created by Dimeji Situ on 2019-05-20.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit

class Quotes{
    
    var quote : String
    var ans : String
    var falseContenders  : [String]
    
    init(q: String, a: String, f: [String]){
        quote = q
        ans = a
        falseContenders = f
    }
}

class Player{
    var name: String
    var currentScore: Int
   // var highScore: Int
    
    init(n: String, c: Int){
        name = n
        currentScore = c
    }
}

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
}
