//
//  Category.swift
//  CoderSwag
//
//  Created by Renato Oliveira Fraga on 2/18/18.
//  Copyright © 2018 iOSDevStudio. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title: String
    private(set) public var imageName: String
 
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
