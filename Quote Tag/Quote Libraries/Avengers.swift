//
//  Avengers.swift
//  Smite
//
//  Created by Dimeji Situ on 2019-05-26.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import Foundation
import UIKit

class Avengers : QuoteBank{
    
    override init(){
        super.init()
        
        list.append(Quotes(q: "\"Dread it, Run from it, \nDestiny still arrives.\"", a: "Thanos", f: ["Dormmammu","Killmonger","Red Skull"] ))
        list.append(Quotes(q: "\"I love you 3000\"", a: "Iron Man", f: ["Spiderman","Groot","Captain America"]))
        list.append(Quotes(q: "\"I just want peace\"", a: "Iron Man", f: ["The Ancient One","Black Widow","Bruce Banner"]))
        list.append(Quotes(q: "\"I can do this all day\"", a: "Captain America", f: ["Zemo","Winter Soldier","Red skull"]))
        list.append(Quotes(q: "\"I'm with you till the end \nof the line\"", a: "Captain America", f: ["Peggy Carter","Black Panther","Hawkeye"]))
        list.append(Quotes(q: "\"With Great power \ncomes great responsibility\"", a: "Uncle Ben", f: ["Iron Man","Captain America", "Happy"]))
        list.append(Quotes(q: "\"I never freeze\"", a: "Black Panther", f: ["Shurri","Killmonger","Dr. Strange"]))
        list.append(Quotes(q:  "\"But I do know one thing. \nIf I had, you’d never been caught.\"", a: "Wasp", f: ["Iron Man","Gamora", "Starlord"]))
        list.append(Quotes(q:  "\"It's not a loop, It's the end of the line.\"", a: "Iron Man", f: ["Dr. Strange","Hulk", "Ancient One"]))
        list.append(Quotes(q: "\"I am Groot\"", a: "Groot", f: ["Starlord","Thor","Kevin Bacon"]))
        list.append(Quotes(q: "\"I love you 3000\"", a: "Iron Man", f: ["Spiderman","Groot","Captain America"]))

        list.shuffle()
    }
    
    
}
