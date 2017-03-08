//
//  Cat.swift
//  ios-swinject-storyboard-demo
//
//  Created by Kushida　Eiji on 2017/03/09.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import Foundation

protocol Animal {
    var name: String { get set }
}

class Cat: Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
