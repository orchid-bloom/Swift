//
//  ViewController.swift
//  Swift-tableView
//
//  Created by Tema on 16/11/1.
//  Copyright © 2016年 陕西百益软件有限公司. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()
        loadUI()
    }

    func loadUI(){
        let tv = UITableView(frame: view.frame, style: .plain)
        tv.dataSource = self;
        view .addSubview(tv)
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }

 //mark:- tableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "hello  +\(indexPath.row)"
        return cell
        
    }
}

