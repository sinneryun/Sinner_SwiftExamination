//
//  ViewController.swift
//  SwiftExamination
//
//  Created by 刘达浮云 on 2017/3/23.
//  Copyright © 2017年 刘达浮云. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableView = UITableView()
    var testNum = ["第一个","第二个","第三个","第四个","第五个"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView = UITableView(frame:  CGRect(x: 0, y: 20, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: UITableViewStyle.plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        self.view.addSubview(tableView)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testNum.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let initIdentifier = "Cell"
        
        let cell = UITableViewCell()
        
        
        switch indexPath.row {
        case 0:
            var cell:TableViewCell! = tableView.dequeueReusableCell(withIdentifier: initIdentifier) as? TableViewCell
            
            if cell == nil {
                cell=TableViewCell(style:UITableViewCellStyle.default, reuseIdentifier: initIdentifier)
            }
            cell.TitleString = testNum[indexPath.row];
            
            
            return cell
            
            
        case 1:
            var cell:TableViewCell1! = tableView.dequeueReusableCell(withIdentifier: initIdentifier) as? TableViewCell1
            
            if cell == nil {
                cell=TableViewCell1(style:UITableViewCellStyle.default, reuseIdentifier: initIdentifier)
            }
            cell.TitleString = testNum[indexPath.row];
            
            
            return cell
        case 2:
            var cell:TableViewCell2! = tableView.dequeueReusableCell(withIdentifier: initIdentifier) as? TableViewCell2
            
            if cell == nil {
                cell=TableViewCell2(style:UITableViewCellStyle.default, reuseIdentifier: initIdentifier)
            }
            cell.TitleString = testNum[indexPath.row];
            
            
            return cell
        case 3:
            var cell:TableViewCell3! = tableView.dequeueReusableCell(withIdentifier: initIdentifier) as? TableViewCell3
            
            if cell == nil {
                cell=TableViewCell3(style:UITableViewCellStyle.default, reuseIdentifier: initIdentifier)
            }
            cell.TitleString = testNum[indexPath.row];
            
            
            return cell
        case 4:
            var cell:TableViewCell4! = tableView.dequeueReusableCell(withIdentifier: initIdentifier) as? TableViewCell4
            
            if cell == nil {
                cell=TableViewCell4(style:UITableViewCellStyle.default, reuseIdentifier: initIdentifier)
            }
            cell.TitleString = testNum[indexPath.row];
            
            
            return cell
        default:
            break
            
        }
        
        return cell
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

