//
//  MainViewController.swift
//  weiboDemo
//
//  Created by 张帆 on 16/5/31.
//  Copyright © 2016年 fanstudio. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = UIColor.orangeColor()
        
        addChildViewController(NSStringFromClass(HomeViewController), imageName: "tabbar_home", title:"首页")
        addChildViewController(NSStringFromClass(MessageViewController), imageName: "tabbar_message_center", title:"消息")
        addChildViewController(NSStringFromClass(DiscoverViewController), imageName: "tabbar_discover", title:"发现")
        addChildViewController(NSStringFromClass(ProfileViewController), imageName: "tabbar_profile", title:"我")
    }
    
    private func addChildViewController(className:String, imageName:String, title:String) {
        // 通过字符串创建对象
        let vc = NSClassFromString(className) as! UIViewController.Type
        let contentVc = vc.init()
        
        // 设置属性
        contentVc.title = title
        contentVc.tabBarItem.image = UIImage(named: imageName)
        contentVc.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
    
        // 添加
        let childVc = UINavigationController(rootViewController: contentVc)
        addChildViewController(childVc)
    }


}
