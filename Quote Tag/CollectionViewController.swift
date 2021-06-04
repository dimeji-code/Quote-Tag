//
//  CollectionViewController.swift
//  Quote Tag
//
//  Created by Dimeji Situ on 2019-05-20.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit
var category = ""

class CollectionViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
   
    var list: [String] = ["Avengers", "DC Universe", "Game Of Thrones", "Umbrella Academy","The 100", "Big Bang Theory","Stranger Things", "Fast And Furious","Grownish", "Agents Of Shield"]
    var imgList: [String] = ["AVG","DC","GOT", "UA","100","BBT","st","faf","grownish", "MAOS"]
    
    
    override func viewDidLoad() {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (list.count)
    }
    
    public func getList() -> [String]{
        return list
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
       
        cell.img.image = UIImage.init(named: imgList[indexPath.item])
        cell.myLabel.text = list[indexPath.item]
        //ADD SHADOW EFFECT
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 2.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = list[indexPath.item]
        category = item
        // performSegue(withIdentifier: "segueIdentifier", sender: item)
        
    }

    

    
    @IBAction func unwindToCVC(_ sender: UIStoryboardSegue){}



}
