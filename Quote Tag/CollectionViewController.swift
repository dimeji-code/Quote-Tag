//
//  CollectionViewController.swift
//  Smite
//
//  Created by Dimeji Situ on 2019-05-20.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import UIKit
var category = ""

class CollectionViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
    var list: [String] = ["Avengers", "DC Universe", "Game Of Thrones", "Bible","The 100"]
    var imgList: [String] = ["AVG","DC","GOT", "bible","100"]
    
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

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToCVC(_ sender: UIStoryboardSegue){}



}
