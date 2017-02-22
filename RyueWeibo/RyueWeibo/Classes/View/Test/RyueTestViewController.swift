//
//  RyueTestViewController.swift
//  RyueWeibo
//
//  Created by jugg on 2017/2/22.
//  Copyright © 2017年 jugg. All rights reserved.
//

import UIKit

class RyueTestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor=UIColor.white
        setupUI()
        
        }
    
    @objc private func setupUI(){
        navigationItem.rightBarButtonItem=UIBarButtonItem(title: "push", target: self, action: #selector(pushBtnClick))
    }
    
    
    
    
    @objc private func pushBtnClick(){
        let testVC = RyueTestViewController()
        navigationController?.pushViewController(testVC, animated: true)
    }

    
}
