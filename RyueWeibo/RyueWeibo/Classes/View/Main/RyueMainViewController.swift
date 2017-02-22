//
//  RyueTabBarViewController.swift
//  RyueWeibo
//
//  Created by jugg on 2017/2/22.
//  Copyright © 2017年 jugg. All rights reserved.
//

import UIKit


//根视图控制器
class RyueMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        //设置自定义的Ryuetabbar
        
        let ryueTabBar = RyueTabBar()
        
        ryueTabBar.ryueDelegate=self
        
        ryueTabBar.callBack = { [weak self] in 
            print(self)
        }
        setValue(ryueTabBar, forKey: "tabBar")
        
//        self.tabBar=RyueTabBar()
        
        addChildViewController(childController: RyueHomeTableViewController(), imgName: "tabbar_home", title: "首页")
        addChildViewController(childController: RyueMessageTableViewController(), imgName: "tabbar_message_center", title: "消息")
        addChildViewController(childController: RyueDiscoverTableViewController(), imgName: "tabbar_discover", title: "发现")
        addChildViewController(childController: RyueProfileTableViewController(), imgName: "tabbar_profile", title: "我的")
        
    }
    
    //重载添加子视图控制器
    
    func addChildViewController(childController: UIViewController,imgName: String,title: String) {
        
        //设置tabbar图片
        childController.tabBarItem.image=UIImage(named:imgName)
        childController.tabBarItem.selectedImage=UIImage(named: imgName+"_selected")?.withRenderingMode(.alwaysOriginal)
        
        //修改tabbar 文字颜色
        
        childController.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.orange], for: .selected)
        //设置文字大小
        childController.tabBarItem.setTitleTextAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 12)], for: .normal)
        
        //设置tabbar的文字
        //        childController.tabBarItem.title=title
        //        childController.navigationItem.title=title
        
        //合成一句
        childController.title=title;
        
        //创建导航视图控制器
        let nav = UINavigationController(rootViewController: childController)
        
        addChildViewController(nav)
    }
    
}



// MARK : -- 遵守RyueTabBarDelegate

extension RyueMainViewController: RyueTabBarDelegate{
    func didSelectedComposeButton() {
        print("我是代理对象调用过来的")
    }
}

