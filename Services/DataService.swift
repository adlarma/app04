//
//  DataService.swift
//  coder-swag
//
//  Created by Adler Martinez on 10/27/20.
//

import Foundation
class DataService{
    //creating something that's gonna hold the data only once
    //one copy, in order to save memory for aslong as the apps lifetime
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")]
    
    private let hats = [
    Product(title: "Desvlopes logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes logo hat black", price: "$22", imageName: "hat02.png"),
        Product(title: "Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Snapback", price: "$20", imageName: "hat04.ong")
    ]
    
    private let hoodies = [
    Product(title: "Desvlopes logo Hoodie", price: "$35", imageName: "hoodie01.png"),
        Product(title: "Devslopes logo Hoodie black", price: "$30", imageName: "hoodie02.png"),
        Product(title: "Hoodie White", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Hoodie grey", price: "$20", imageName: "hoodie04.ong")
    ]
    
    private let shirts = [
    Product(title: "Desvlopes logo Shirt", price: "$25", imageName: "hoodie01.png"),
        Product(title: "Devslopes logo Shirt black", price: "$20", imageName: "hoodie02.png"),
        Product(title: "Shirt White", price: "$12", imageName: "hoodie03.png"),
        Product(title: "Shirt grey", price: "$15", imageName: "hoodie04.ong")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategorieTitle title:String) -> [Product]{
        switch title {
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "SHIRTS":
            return getShirts()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies()-> [Product]{
        return hoodies
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getDigitalGoods()-> [Product]{
        return digitalGoods
    }
}
