//
//  MultipleCustomCellModel.swift
//  MultipleCustomCell
//
//  Created by Begum Unal on 28.06.2022.
//

import Foundation
import UIKit

struct Model : Codable{
    let userName : String
    let image : String
    
    init(username: String, image: String){
        self.userName = username
        self.image = image
    }
}
