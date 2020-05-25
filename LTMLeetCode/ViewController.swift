//
//  ViewController.swift
//  LTMLeetCode
//
//  Created by 柯南 on 2020/5/25.
//  Copyright © 2020 LTM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var dataList: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.configLeetCodeData()
        
        self.view.addSubview(self.leetCodeTableView)
        self.leetCodeTableView.frame = self.view.frame
        
    }
    
    func configLeetCodeData() {
        self.dataList.append("两数之和")

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID")
        
        cell?.textLabel?.text = self.dataList[indexPath.row]
        return cell ?? UITableViewCell.init(style: .default, reuseIdentifier: "CellID")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch self.dataList[indexPath.row] {
        case "两数之和":
            let nums = [3,2,3]
            let target = 6
            let result = LeetCode.twoSumOneHash(nums, target)
            
            print(result)
        default:
            break
        }
    }
    
    lazy var leetCodeTableView: UITableView = {
        let tableView = UITableView.init(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CellID")
        
        return tableView
    }()
}

