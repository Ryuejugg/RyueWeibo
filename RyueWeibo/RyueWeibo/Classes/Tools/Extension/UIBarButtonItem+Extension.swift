//
//  UIBarButtonItem+Extension.swift
//  RyueWeibo
//
//  Created by jugg on 2017/2/22.
//  Copyright © 2017年 jugg. All rights reserved.
//

import UIKit


//不能提供指定构造函数 在extension,可以定义便利构造函数
extension UIBarButtonItem{
    
    //提供便利构造偶函数
    //给函数的参数提供默认值,如果这个参数没有给它传值那么使用默认值nil,如果给它传值了那么使用传用过来的值
    convenience init(title: String,imgName: String?=nil,target: Any?,action: Selector) {
        
        //使用self的方式调用init的构造函数
        self.init()
        
        let button = UIButton()
        button.addTarget(target, action: action, for: .touchUpInside)
        button.setTitle(title, for: .normal)
        
        if imgName != nil {
            button.setImage(UIImage(named:imgName!), for: .normal)
        }
        //文字的颜色
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.orange, for: .highlighted)
        
        button.titleLabel?.font=UIFont.systemFont(ofSize: 15)
        button.sizeToFit()
        
        self.customView=button

    }
    
    
}
