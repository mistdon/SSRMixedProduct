//
//  PersonalViewController.swift
//  SSRMixedProduct
//
//  Created by shendong on 2019/5/27.
//  Copyright © 2019 shendong. All rights reserved.
//

import UIKit
import MJRefresh

class PersonalViewController: UIViewController {
    var footer: MJRefreshFooter?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let textField = UITextField(frame: CGRect(x: 100, y: 100, width: 100, height: 44))
        textField.placeholder = "Insert here..."
        view.addSubview(textField)
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: textField.frame.maxY, width: view.frame.width, height: 300))
        scrollView.contentSize = CGSize(width: view.frame.width, height: 500)
        scrollView.backgroundColor = .lightGray
        view.addSubview(scrollView)
        
        footer = MJRefreshFooter(refreshingTarget: self, refreshingAction: #selector(refresh(_:)))
        scrollView.mj_footer = footer
    
    }
    @objc func refresh(_ sender: Any){
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
            self.footer?.endRefreshing()
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let manager = DateManager()
        manager.managerString("SSRMixedProduct")
        manager.convert()
        let date = Date()
//        date.currentDate()
        print(date.description)
        
        let str = "shendong"
        str.revertString()
        
        
        
    }
}
