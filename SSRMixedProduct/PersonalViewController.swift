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
        
        print(AppModuleName)
        
//        let manager = DateManager()
//        manager.testVoidBlock = {
//
//        }
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 44))
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        button.backgroundColor = .red
        view.addSubview(button)

    }
    @objc func refresh(_ sender: Any){
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
            self.footer?.endRefreshing()
        }
    }
    @objc func tapAction(_ sender: Any){
//        let vc = ObjcViewController()
//        vc.delegate = self
//        self.navigationController?.show(vc, sender: nil)
        testBlockFunc()
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
    func testBlockFunc() {
        
        // 第一种: 无参数无返回
        DateManager.shared().testVoidBlock = {
            print("testVoidBlock 1")
        }
        DateManager.shared().testVoidBlock()
        // 第二种: 有参数无返回
        DateManager.shared().testVoidBlock2 = {(text: String?) in
            print(text)
        }
        DateManager.shared().testVoidBlock2("swift testVoidBlock2")
        // 第三种: 无参数有返回
        DateManager.shared().testStringBlock = { () -> String in
            return "testStringBlock : 1"
        }
        let testStr1 = DateManager.shared().testStringBlock()
        if let testStr1 = testStr1 {
            print(testStr1)
        }
        // 第四种: 有参数，有返回
        DateManager.shared().testStringBlock2 = { (text: String?) -> String in
            return "testStringBlock2 : " + (text ?? "dd")
        }
        let testStr2 = DateManager.shared().testStringBlock2("ssr")
        if let testStr2 = testStr2 {
            print(testStr2)
        }
    }
}
extension PersonalViewController: ObjcDelegate{
    func objcViewController(_ message: String) {
        print(message)
    }
}
