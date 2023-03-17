//
//  ViewController.swift
//  customCollectionView
//
//  Created by R94 on 15/02/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    var animal = ["🐶","🐼","🐒","🐥","🦉","🐴","🦄","🦋","🐍","🐬"]
    
    var name = ["Dog", "panda","monkey","dak","owal","horce","uniqone","butterfly","snake","dolfin"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animal.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier:  "cell", for: indexPath) as! CollectionViewCell1
        cell.label1.text = animal[indexPath.row]
        cell.label2.text = name[indexPath.row]
        cell.layer.borderWidth = 5
        cell.layer.cornerRadius = 10
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(n, animated: true)
    }
    
   

}

