//
//  TableViewController.swift
//  SSRMixedProduct
//
//  Created by shendong on 2019/5/27.
//  Copyright © 2019 shendong. All rights reserved.
//

import UIKit
import MJRefresh

class TableViewController: UIViewController {
    private var tableView = UITableView()
    private var footer: MJRefreshNormalHeader?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: view.frame, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        tableView.tableFooterView = UIView()
        view.addSubview(tableView)
        footer = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(refresh(_:)))
        tableView.mj_header = footer
    }
    @objc func refresh(_ sender: Any){
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.footer?.endRefreshing()
        }
    }
    deinit {
        
    }
}
extension TableViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier") as! UITableViewCell
        cell.textLabel?.text = "I'm at " +  String(indexPath.row)
        return cell
    }
}
