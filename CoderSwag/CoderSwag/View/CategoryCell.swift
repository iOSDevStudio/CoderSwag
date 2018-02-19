//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by Renato Oliveira Fraga on 2/18/18.
//  Copyright © 2018 iOSDevStudio. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categotyTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named:category.imageName)
        categotyTitle.text = category.title
    }

}
