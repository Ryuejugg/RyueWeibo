
//
//  UIView+Extension.swift
//  RyueWeibo
//
//  Created by jugg on 2017/2/22.
//  Copyright © 2017年 jugg. All rights reserved.
//

import UIKit
//不能使用存储属性,不能提供指定构造函数
extension UIView{
    //获取x坐标和设置x坐标
    var x: CGFloat{
        get{
            return self.frame.origin.x
        }
        set{
            self.frame.origin.x=newValue
        }
    }
    //获取y坐标和设置y坐标
    var y: CGFloat{
        get{
            return self.frame.origin.y
        }
        set{
            self.frame.origin.y=newValue
        }
    }
    
    var width: CGFloat{
        get{
            return self.frame.size.width
        }
        set{
            
            self.frame.size.width=newValue
        }
    }
    var height: CGFloat{
        get{
            return self.frame.size.height
        }
        set{
            
            self.frame.size.height=newValue
        }
    }
    
    //获取size和设置size
    
    var size:CGSize{
        get{
            return self.frame.size
        }
        set{
           self.frame.size=newValue
        }
    }
    
    //设置中心x和获取中心x
    var centerX: CGFloat{
        set{
          self.centerX=newValue
        }
        get{
            return self.centerX
        }
    }
    //设置中心x和获取中心y
    var centerY: CGFloat{
        set{
            self.centerY=newValue
        }
        get{
            return self.centerY
        }
    }
}
