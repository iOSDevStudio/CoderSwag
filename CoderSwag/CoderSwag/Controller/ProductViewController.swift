//
//  ProductViewController.swift
//  CoderSwag
//
//  Created by Renato Oliveira Fraga on 2/25/18.
//  Copyright © 2018 iOSDevStudio. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
    
    }
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
        
    }

    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }


}
