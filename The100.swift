//
//  The100.swift
//  Quote Tag
//
//  Created by Dimeji Situ on 2019-06-28.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit

import  Foundation

class The100: QuoteBank {

    override init() {
        super.init()
        
        list.append(Quotes(q: "\"Places are not evil, brother. People are.\"", a: "Nyko", f: ["Monty","Jasper","Lexa"] ))
        list.append(Quotes(q: "\"If we stick together, I give you my word. We won’t just survive. We’ll thrive.\"", a: "Clarke", f: ["Monty","Octavia","Indra"] ))
        list.append(Quotes(q: "\"The time of the commanders is past. The time of the flame is past. This is your time. Let me help you.\"", a: "Indra", f: ["Raven","Echo","Finn"] ))
        list.append(Quotes(q: "\" Good can come out of even the darkest acts .\"", a: "Jaha", f: ["Abby","Lexa","Finn"] ))
        list.append(Quotes(q: "\" The world’s been trying to turn me into a monster for as long as I can remember .\"", a: "Lincoln", f: ["Raven","Clarke","Bellamy"] ))
        list.append(Quotes(q: "\" Being a good leader means knowing which battles to fight  .\"", a: "Kane", f: ["Raven","Octavia","Clarke"] ))
        list.append(Quotes(q: "\" I'm sorry I turned you in Shaw .\"", a: "Clarke", f: ["John Murphy","Abby","Monty"] ))
        list.append(Quotes(q: "\" If you are not Skaikru, you are the enemy of Skaikru .\"", a: "Octavia", f: ["Kane","Clarke","Jaha"] ))
        list.append(Quotes(q: "\" Fears are fears. Slay your demons when you’re awake, they won’t be there to get you in your sleep .\"", a: "Bellamy", f: ["Clarke","John Murphy","Jaha"] ))
        list.append(Quotes(q: "\" If you’re looking for someone to talk you down, tell you that you’re just upset and not thinking straight, I’m not that guy.\"", a: "Bellamy", f: ["John Murphy","Jasper","Echo"] ))
        list.append(Quotes(q: "\"  Listen to me. I told you my life ended the day you were born, the truth is, it didn’t start until then.\"", a: "Bellamy", f: ["Luna","Clarke","Monty"] ))
        list.append(Quotes(q: "\"My sister, my responsibility.\"", a: "Bellamy", f: ["Clarke","John Murphy","Abby"] ))
        list.append(Quotes(q: "\" My brother, my responsibility. .\"", a: "Octavia", f: ["Jaha","John Murphy","Japer"] ))
        list.append(Quotes(q: "\" If you’re wrong and there is a hell… then I guess I’ll see you there .\"", a: "Bellamy", f: ["John Murphy","Octavia","Finn"] ))
        list.append(Quotes(q: "\" If death has no cost, life has no worth. That’s how we live .\"", a: "Lincoln", f: ["Jasper","Monty","Raven"] ))
        list.append(Quotes(q: "\" Consent is key. Blah de blah. Tell me something. Did this Ferrari I'm wearing consent to giving up her body?\"", a: "Josephine", f: ["Clarke","Raven","Anya"] ))
        list.append(Quotes(q: "\" Tell Raven, she deserves happiness. She doesn't think she does but she does .\"", a: "Shaw", f: ["Bellamy","Abby","Jackson"] ))
        list.append(Quotes(q: "\" I love you, Clarke. But we are on the wrong side of this war.\"", a: "Madi", f: ["Bellamy","Abby","Finn"] ))
        list.append(Quotes(q: "\" The farmers won’t save the world, Monty. The warriors will.\"", a: "Octavia", f: ["Indra","Lexa","Clarke"] ))
        list.append(Quotes(q: "\" Shaw, you're good. I can see it in your eyes.\"", a: "Raven", f: ["Diyoza","Lexa","Clarke"] ))
        list.shuffle()

    }
    



}
