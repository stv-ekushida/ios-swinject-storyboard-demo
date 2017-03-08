//
//  AnimalViewController.swift
//  ios-swinject-storyboard-demo
//
//  Created by Kushida　Eiji on 2017/03/09.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    var animal: Animal?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(animal?.name ?? "")
    }
}

