//
//  MultiplayerCategoryViewController.swift
//  QuoteTag
//
//  Created by Dimeji Situ on 2019-06-18.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit


class MultiplayerCategoryViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    let v = CollectionViewController()
    var c : [String] = [] //List of selected quote libraries
    var count: Int = 0 //Number of quote libraries
    var num = 0 //NUMBER OF QUOTES TICKED

    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    
    @IBOutlet weak var enterButton: UIButton!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (v.getList().count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = v.getList()[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCell.AccessoryType.checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.none
            if (c.contains((tableView.cellForRow(at: indexPath)?.textLabel!.text)!)){
                print("c.count")
                print(c.count)
                var i = 0
                while i < c.count{
                    if (c[i] == tableView.cellForRow(at: indexPath)?.textLabel!.text){
                        print(c[i])
                        countUnchosen(unchoose: c[i])
                        c.remove(at: i)
                        break
                    }
                    i+=1
                }
                print("c.count")
                print(c.count)

            }
            
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.checkmark
            if (!c.contains((tableView.cellForRow(at: indexPath)?.textLabel!.text)!)){
                c.append((tableView.cellForRow(at: indexPath)?.textLabel!.text)!)
                
            }
            countChosen(index: (tableView.cellForRow(at: indexPath)?.textLabel!.text)!)


        }
        print("num before func", num)
        isOk()
        print("num after func", num)

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        isOk()
        print(num)
        print(num)
        print(num)
    }
    

    @IBAction func enterPressed(_ sender: UIButton) {
      
        if (count != 0 && c.isEmpty == false && count < num){
            performSegue(withIdentifier: "toTap", sender: self)
            
        }
    }
    
 
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTap"{
           let destVC = segue.destination as! MultiViewController
            destVC.list = c
            destVC.count = count
        }
    }
    
    //subtract unchecked categories
    func countUnchosen(unchoose : String){
        if unchoose == "Avengers" {
            let av = Avengers()
            num -= av.list.count
            print(num)

        }else if unchoose == "DC Universe"{
            let dc = DCUniverse()
            num = num - dc.list.count
            print(num)

        }else if unchoose == "Game Of Thrones"{
            let got = GameOfThrones()
            num = num - got.list.count
            print(num)

        }else if unchoose == "The 100"{
            let the100 = The100()
            num = num - the100.list.count
            print(num)

        }else if unchoose == "Umbrella Academy"{
            let ua = UmbrellaAcademy()
            num = num - ua.list.count
            print(num)

        }else if unchoose == "Big Bang Theory"{
            let bbt = BigBangTheory()
            num = num - bbt.list.count
            print(num)
            
        }else if unchoose == "Stranger Things"{
            let st = StrangerThings()
            num = num - st.list.count
            print(num)
                        
        }else if unchoose == "Fast And Furious"{
            let faf = FastAndFurious()
            num = num - faf.list.count
            print(num)
            
        }else if unchoose == "Grownish"{
            let grownish = Grownish()
            num = num - grownish.list.count
            print(num)
            
        }else if unchoose == "Agents Of Shield"{
            let maos = AgentsOfShield()
            num = num - maos.list.count
            print(num)
            
        }
    }
    
    //count checkmarked categories
    func countChosen(index : String){
            if index == "Avengers" {
                let av = Avengers()
                num += av.list.count
                print(num)

                print("AVENGERS C0UNT->>", av.list.count)
            }else if index == "DC Universe"{
                let dc = DCUniverse()
                num += dc.list.count
                print(num)

                print("DC C0UNT->>", dc.list.count)

            }else if index == "Game Of Thrones"{
                let got = GameOfThrones()
                num += got.list.count
                print(num)

                print("got C0UNT->>", got.list.count)

            }else if index == "The 100"{
                let the100 = The100()
                num += the100.list.count
                print(num)

                print("the 100 C0UNT->>", the100.list.count)

            }else if index == "Umbrella Academy"{
                let ua = UmbrellaAcademy()
                num += ua.list.count
                print(num)

                print("bible C0UNT->>", ua.list.count)

            }else if index == "Big Bang Theory"{
                let bbt = BigBangTheory()
                num += bbt.list.count
                print(num)
                
                print("big bang theory C0UNT->>", bbt.list.count)
                
            }else if index == "Stranger Things"{
                let st = StrangerThings()
                num += st.list.count
                print(num)
                
                print("Stranger Things->>", st.list.count)
                
            }else if index == "Fast And Furious"{
                let faf = FastAndFurious()
                num = num + faf.list.count
                print(num)
                
                print("Fast and Furious C0UNT->>", faf.list.count)
                
            }else if index == "Agents Of Shield"{
                let maos = AgentsOfShield()
                num += maos.list.count
                print(num)
                
                print("Agents of shield C0UNT->>", maos.list.count)
                
            }else if index == "Grownish"{
                let grownish = Grownish()
                num = num + grownish.list.count
                print(num)
                
                print("Grownish C0UNT->>", grownish.list.count)
                
        }

    }
    
    @IBAction func selectNum(_ sender: UIButton) {
        
        print("COUNT",count)
        
        if sender.tag == 0{
            count = 8
        }else if sender.tag == 1{
            count = 15
        }else if sender.tag == 2{
            count = 30
        }
        print("Count",count)
    }
  
    //checks if ### selector is eligible for enablement
    func isOk(){
        if (Int(b1.titleLabel!.text!)! > num){
            b1.isEnabled = false
        }else{
            b1.isEnabled = true
        }
        if (Int(b2.titleLabel!.text!)! > num){
            b2.isEnabled = false
        }else{
            b2.isEnabled = true
        }
        if (Int(b3.titleLabel!.text!)! > num){
            b3.isEnabled = false
        }else{
            b3.isEnabled = true
        }
    }
    

    


}
