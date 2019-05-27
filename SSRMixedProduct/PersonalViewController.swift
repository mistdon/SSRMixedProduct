//
//  PersonalViewController.swift
//  SSRMixedProduct
//
//  Created by shendong on 2019/5/27.
//  Copyright © 2019 shendong. All rights reserved.
//

import UIKit

class PersonalViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let manager = DateManager()
        manager.managerString("SSRMixedProduct")
        manager.convert()
        let date = Date()
        print(date.description)
        
        let str = "shendong"
        str.rever
        
    }
}
