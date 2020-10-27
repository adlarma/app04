//
//  ProductCell.swift
//  coder-swag
//
//  Created by Adler Martinez on 10/27/20.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateVIews(product: Product){
        productImage.image = UIImage(named:  product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
