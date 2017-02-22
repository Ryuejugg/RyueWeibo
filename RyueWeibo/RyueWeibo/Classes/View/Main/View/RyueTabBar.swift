//
//  RyueTabBar.swift
//  RyueWeibo
//
//  Created by jugg on 2017/2/22.
//  Copyright © 2017年 jugg. All rights reserved.
//

import UIKit


//定义代理协议
protocol RyueTabBarDelegate: NSObjectProtocol{
    func didSelectedComposeButton()
}

class RyueTabBar: UITabBar {

    //MARK: - 懒加载
    
    //定义代理对象  代理对象需要使用弱引用 防止产生循环引用
   weak var ryueDelegate: RyueTabBarDelegate?
    
    var callBack : (()->())?
    
    private lazy var composeButton : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named:"tabbar_compose_button"), for: .normal)
        button.setBackgroundImage(UIImage(named:"tabbar_compose_button_highlighted"), for: .highlighted)
        //设置图片
        button.setImage(UIImage(named:"tabbar_compose_icon_add"), for: .normal)
        button.setImage(UIImage(named:"tabbar_compose_icon_add_highlighted"), for: .highlighted)
        
        
        //与内容大小一样
        button.sizeToFit()
        button.addTarget(self, action: #selector(composeButtonClick), for: .touchUpInside)
        
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    //加载storyboard或者xib的时候调用
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //添加控件
    private func setupUI(){
        
        addSubview(composeButton)
    }
    //MARK: - 点击加号按钮处理
    func composeButtonClick(){
        //执行闭包
        callBack?()
        //通过代理对象调用代理方法
        ryueDelegate?.didSelectedComposeButton()
    }
    
    
    
    //调整子控件布局
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //设置中心点
        composeButton.center.x = width/2
        composeButton.center.y = height/2
        
        //计算每项的宽度
        let buttonWidth = width/5
        
        //遍历子控件
        
        //记录当前遍历的是第几个按钮
        var index = 0
        
        for childeView in subviews{
            if childeView.isKind(of: NSClassFromString("UITabBarButton")!){
                childeView.width=buttonWidth
//                设置x坐标
                childeView.x=CGFloat(index)*buttonWidth
                
                index+=1
                if index==2 {
                    index+=1
                }
                
            }
        }
        
    }
}
