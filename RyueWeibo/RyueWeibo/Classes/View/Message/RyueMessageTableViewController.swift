//
//  RyueMessageTableViewController.swift
//  RyueWeibo
//
//  Created by jugg on 2017/2/22.
//  Copyright © 2017年 jugg. All rights reserved.
//

import UIKit

class RyueMessageTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

           setupNaviUI()
    }

    private func setupNaviUI(){
        
        navigationItem.leftBarButtonItem=UIBarButtonItem(title: "注册", target: self, action: #selector(registBtnClick))
        navigationItem.rightBarButtonItem=UIBarButtonItem(title: "登录",target: self, action: #selector(loginBtnClick))
        
    }
    
    // MARK : -- 登录和注册按钮的点击方法
    
    @objc  private func registBtnClick(){
        print("注册")
    }
    @objc private func loginBtnClick(){
        print("登录")
    }
    
}
