//
//  ViewController.swift
//  ColectionView
//
//  Created by Cntt05 on 4/26/17.
//  Copyright © 2017 Cntt05. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource{

    @IBOutlet weak var MyColectionView: UICollectionView!
    
    var images = ["chomchom" , "dua" , "duahau" , "man" , "xoai" , "dau" , "chuoi" , "vai" , "saurieng" , "buoi" , "nho"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.MyColectionView.delegate = self
        self.MyColectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return images.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection_cell" , for: indexPath) as! MyCollectionViewCell
        cell.MyImageView.image = UIImage(named : images[indexPath.row] )
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print ("Select row is: " , indexPath.row)
    }
}

