//
//  BaseViewContrller.swift
//  CDLearnSwift
//
//  Created by chendi on 17/3/27.
//  Copyright © 2017年 chendi. All rights reserved.
//

import UIKit


class BaseViewContrller: UIViewController {
    var tableView = UITableView()
    static var cellIdentifier = "cell"
    var items : [String] = ["UIKits"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initTableView(){
        // 初始化tableView的数据
        self.tableView = UITableView(frame:self.view.frame, style:UITableViewStyle.plain)
        self.tableView.tableFooterView = UIView.init()
        // 设置tableView的数据源
        self.tableView.dataSource = self
        // 设置tableView的委托
        self.tableView.delegate = self
        // 注册cell
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: BaseViewContrller.cellIdentifier)
        self.view.addSubview(self.tableView)
    }
    

}

extension BaseViewContrller : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BaseViewContrller.cellIdentifier, for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    
}

extension BaseViewContrller : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        guard let cell = tableView.cellForRow(at: indexPath) as? UITableViewCell else{
//            return
//        }
        NSLog("\(indexPath)")
        tableView.deselectRow(at: indexPath,animated: true)
        self.navigationController?.pushViewController(UIKitViewController(), animated: true)
    }
}
