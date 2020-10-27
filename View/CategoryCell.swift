//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Adler Martinez on 10/27/20.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
