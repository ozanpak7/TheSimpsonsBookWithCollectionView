//
//  Simpsons.swift
//  TheSimpsonsBookWithCollectionView
//
//  Created by T51470 on 19.02.23.
//

import UIKit

class Simpson {
    
    var name : String
    var job : String
    var image : UIImage
    var age : Int
    
    init(simpsonName: String, simpsonJob:String, simpsonAge: Int, simpsonImage:UIImage) {
        name = simpsonName
        job = simpsonJob
        image = simpsonImage
        age = simpsonAge
    }
}
