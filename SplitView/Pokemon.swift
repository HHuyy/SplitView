//
//  Pokemon.swift
//  SplitView
//
//  Created by tham gia huy on 6/4/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

enum Type {
    case Fire, Water, Wood, Earth
}

class Pokemon {
    let name: String
    let description: String
    let iconName: String
    let type: Type
    
    init(name: String, description: String, iconName: String, type: Type) {
        self.name = name
        self.description = description
        self.iconName = iconName
        self.type = type
    }
    
    var typeImage: UIImage {
        switch type {
        case .Fire:
            return UIImage(named: "Fire.png")!
        case .Water:
            return UIImage(named: "Water.png")!
        case .Wood:
            return UIImage(named: "Wood.png")!
        case .Earth:
            return UIImage(named: "Earth.png")!
        }
    }
    
    var icon: UIImage? {
        return UIImage(named: iconName)
    }
}
