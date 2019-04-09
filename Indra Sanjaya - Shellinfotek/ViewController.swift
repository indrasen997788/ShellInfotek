//
//  ViewController.swift
//  Indra Sanjaya - Shellinfotek
//
//  Created by Indra Sanjaya on 08/04/19.
//  Copyright © 2019 Indra Sanjaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var flowLayout: UICollectionView!


    @IBOutlet weak var doneButton: UIButton!
    
    @IBAction func DoneButton(_ sender: Any) {
    }

   
    
    let menus = ["Topokki","Sundubu","Galbitang","Beef BBQ","Korean Friend Chicken","Bingsoo","Dakgalbi","Ramyun","Bulgogi","Annyeong set 1","Nori","Mandu","Kimchi","Beef","Anyeong Set 2","Choko Bingsoo","Bokumbap","Bulgogi Bilbimbow","Classic Bingsoo","Matcha","Japchae","Yoghurt Bingsoo","Korean Lemonade","Matcha Milk Tea","Choco Banana Milk","Jeju Orange Tea","Apple Tea","Mineral Water","Tea"]
    
var menuButtonFunc = CollectionViewCell()
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
         doneButton.layer.cornerRadius = 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return menus.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.menusButton.setTitle(menus[indexPath.item], for: .normal)
        

        
        
        cell.menusButton.addTarget(self, action: #selector(button_Select(_:)), for: .touchUpInside)
       

        return cell
    }
    
    @objc func button_Select(_ sender: UIButton) {
        let button = sender

        if button.isSelected == true {
 
   
            button.backgroundColor = .clear
            button.layer.cornerRadius = 25
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            button.layer.borderWidth = 1
            button.layer.borderColor = #colorLiteral(red: 0.9424466491, green: 0.6981263757, blue: 0.6917206645, alpha: 1)
            button.setTitleColor(#colorLiteral(red: 0.9424466491, green: 0.6981263757, blue: 0.6917206645, alpha: 1), for: .normal)
            button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            button.isSelected = false
            
        } else  {
 
          
           
            button.backgroundColor = .clear
            button.layer.cornerRadius = 25
            button.layer.borderWidth = 1
            button.layer.borderColor = #colorLiteral(red: 0.6666666667, green: 0.6666666667, blue: 0.6666666667, alpha: 1)
            button.titleLabel?.textColor=#colorLiteral(red: 0.6666666667, green: 0.6666666667, blue: 0.6666666667, alpha: 1)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            button.setTitleColor(#colorLiteral(red: 0.6666666667, green: 0.6666666667, blue: 0.6666666667, alpha: 1), for: .selected)
            button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
           button.isSelected = true
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }


}

