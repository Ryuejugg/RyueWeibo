//
//  RyueProfileTableViewController.swift
//  RyueWeibo
//
//  Created by jugg on 2017/2/22.
//  Copyright © 2017年 jugg. All rights reserved.
//

import UIKit

class RyueProfileTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

            setupNaviUI()
    }

    private func setupNaviUI(){
        
        navigationItem.rightBarButtonItem=UIBarButtonItem(title: "push", imgName: nil, target: self, action: #selector(pushBtnClick))
    }
    
    // MARK : -- psuh按钮的点击方法
    
    @objc  private func pushBtnClick(){
        let testVC = RyueTestViewController()
        
        navigationController?.pushViewController(testVC, animated: true)
    }
  
}
