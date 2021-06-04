//
//  MultiplayerCategoryViewController.swift
//  Smite
//
//  Created by Dimeji Situ on 2019-06-18.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit


class MultiplayerCategoryViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    let v = CollectionViewController()
    var c : [String] = []
    var count: Int = 0
    var num = 0

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
        if (count != 0 && c.isEmpty == false){
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

        }else if unchoose == "Bible"{
            let bible = Bible()
            num = num - bible.list.count
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
                num = num + dc.list.count
                print(num)

                print("DC C0UNT->>", dc.list.count)

            }else if index == "Game Of Thrones"{
                let got = GameOfThrones()
                num = num + got.list.count
                print(num)

                print("got C0UNT->>", got.list.count)

            }else if index == "The 100"{
                let the100 = The100()
                num = num + the100.list.count
                print(num)

                print("the 100 C0UNT->>", the100.list.count)

            }else if index == "Bible"{
                let bible = Bible()
                num = num + bible.list.count
                print(num)

                print("bible C0UNT->>", bible.list.count)

            }
    }
    
    @IBAction func selectNum(_ sender: UIButton) {
        
        print("COUNT",count)
        
        if sender.tag == 0{
            count = 5
        }else if sender.tag == 1{
            count = 20
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
