//
//  ProductsCollection.swift
//  CollectionViewIntoTableView
//
//  Created by DhakaLive on 11/3/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class ProductsCollection: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
   
   
   func numberOfSections(in collectionView: UICollectionView) -> Int {
       return 1
   }
   
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 20
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
       
       return cell
       
   }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200.0, height: 150.0)
    }

}
