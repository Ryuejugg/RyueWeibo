//
//  RyueNavigationController.swift
//  RyueWeibo
//
//  Created by jugg on 2017/2/22.
//  Copyright © 2017年 jugg. All rights reserved.
//

import UIKit

class RyueNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   //重写push方法,监听push操作
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        //push的时候隐藏底部的tabbar
        if viewControllers.count>0{
            viewController.hidesBottomBarWhenPushed=true
        }
        
        super.pushViewController(viewController, animated: animated)
        
        if viewControllers.count>1{
            if viewControllers.count>2 {
                //获取导航栏里面的第一个子视图控制器的标题
                
                let title = viewControllers.first!.title!
                
                viewController.navigationItem.leftBarButtonItem=UIBarButtonItem(title: title, imgName: "navigationbar_back_withtext", target: self, action: #selector(popClick))
            }else{
             viewController.navigationItem.leftBarButtonItem=UIBarButtonItem(title: "返回", imgName: "navigationbar_back_withtext", target: self, action: #selector(popClick))
            }
             viewController.navigationItem.title = "这是第\(viewControllers.count)层控制器"
        }
      
    }
    
    @objc private func popClick(){
        
        popViewController(animated: true)
    }
}
