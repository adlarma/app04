//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Adler Martinez on 10/27/20.
//

import UIKit

class ProductsVC: UIViewController {

    @IBOutlet weak var productCV: UICollectionView!
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productCV.dataSource = self
        productCV.delegate = self
        
    }
    
    func initProducts(category: Category){
        products = DataService.instance.getProducts(forCategorieTitle: category.title)
        navigationItem.title = category.title
    }

}

extension ProductsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath)as? ProductCell{
            let product = products[indexPath.row]
            cell.updateVIews(product: product)
            return cell
        }
        return ProductCell()
    }
    
    
}
