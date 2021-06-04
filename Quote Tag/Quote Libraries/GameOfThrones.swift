//
//  TrueOrFalse.swift
//  Quote Tag
//
//  Created by Dimeji Situ on 2019-05-26.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import Foundation
import UIKit

class GameOfThrones : QuoteBank{
    override init(){
        super.init()
        
        list.append(Quotes(q: "\"Any man who must say I am King, is no true king.\"", a: "Patriarch Tywin", f: ["Daenery","Syrio Forel","Cersei"] ))
        list.append(Quotes(q: "\"The things I do for love.\"", a: "Jaime", f: ["Patriarch Tywin","Cersei","Daenery"]))
        list.append(Quotes(q: "\"There is only one thing we say to death: Not today.\"", a: "Syrio Forel", f: ["Cersei","Tyrion","Daenery"]))
        list.append(Quotes(q: "\"That’s what I do: I drink and I know things.\"", a: "Tyrion", f: ["Jaime","Jon Snow","Daenery"]))
        list.append(Quotes(q: "\"Yes. All men must die, but we are not men.\"", a: "Daenery", f: ["Tyrion "," Cersei","Jaime"]))
        list.append(Quotes(q: "\"Chaos isn’t a pit. Chaos is a ladder.\"", a: "Littlefinger", f: ["Tyrion","Daenery ", "Ygritte"]))
        list.append(Quotes(q: "\"You know nothing, Jon Snow.\"", a: "Ygritte",f: ["Tyrion","Daenery","Littlefinger"]))
        list.append(Quotes(q: "\"When you play the game of thrones, you win or you die. There is no middle ground.\"", a: "Cersei", f: ["Jon Snow","Tyrion", "Daenery"]))
        
    }
}
