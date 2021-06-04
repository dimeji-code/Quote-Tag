//
//  MissionImpossible.swift
//  Smite
//
//  Created by Dimeji Situ on 2019-05-26.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import Foundation
import UIKit

class DCUniverse: QuoteBank {
    override init(){
        super.init()
        
        list.append(Quotes(q: "\"Do you bleed? You will.\"", a: "Batman", f: ["Superman","Grodd","Zod"] ))
        list.append(Quotes(q: "\"Stay down. If I wanted it, you'd be dead already.\"", a: "Superman", f: ["Batman","Deadshot","Harley Quinn"]))
        list.append(Quotes(q: "\"Nobody cares about clark kent taking on the batman.\"", a: "Perry white", f: ["Louis Lane","Lex Luther","Jim Gordon"]))
        list.append(Quotes(q: "\"Devils don't come from hell beneath us, they come from the sky.\"", a: "Lex Luther", f: ["Bruce Wayne","Wonder woman","Killer Croc"]))
        list.append(Quotes(q: "\"You let this little thing tell you what to do?\"", a: "Wonder woman", f: ["Alfred","Louis Lane","Lex Luther"]))
        list.append(Quotes(q: "\"Just save one person\"", a: "Batman", f: ["Flash","Cyborg", "Aquaman"]))
        list.append(Quotes(q: "\"Dressed like a bat, I dig it\"", a: "Aquaman",f: ["Alfred","Cyborg","Martha Kent"]))
        list.append(Quotes(q:  "\"Permission to come aboard?\"", a: "Aquaman", f: ["Black Manta","Namor", "Batman"]))
    }
}
