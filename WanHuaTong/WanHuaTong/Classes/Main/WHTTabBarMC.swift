//
//  WHTTabBarMC.swift
//  WanHuaTong
//
//  Created by 苏强 on 2017/11/12.
//  Copyright © 2017年 苏强. All rights reserved.
//

import UIKit

class WHTTabBarMC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let newsVC = WHTNewsMainVC()
        self.makeTabBarButton(childVC: newsVC, title: "主页", imageName: "tabbar_home", selectImage: "tabbar_home")
        let weatherVC = WHTWeatherMainVC()
        self.makeTabBarButton(childVC: weatherVC, title: "天气", imageName: "tabbar_weather", selectImage: "tabbar_weather")

        let searchVC = WHTSearchMainVC()
        self.makeTabBarButton(childVC: searchVC, title: "查询", imageName: "tabbar_search", selectImage: "tabbar_search")
        
        let foodVC = WHTFoodMenuMainVC()
        self.makeTabBarButton(childVC: foodVC, title: "食谱", imageName: "tabbar_food", selectImage: "tabbar_food")
        let mineVC = WHTMineMainVC()
        self.makeTabBarButton(childVC: mineVC, title: "我的", imageName: "tabbar_mine", selectImage: "tabbar_mine")


    }
    
    func makeTabBarButton(childVC:UIViewController,title:String,imageName:String,selectImage:String) -> () {
        let navVC = WHTNavMC()
        navVC.addChildViewController(childVC)
        childVC.tabBarItem.title = title
        let image = UIImage.init(named: imageName)
        childVC.tabBarItem.image = image
        childVC.tabBarItem.image?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let selectImage = UIImage.init(named: selectImage)
        childVC.tabBarItem.selectedImage = selectImage
        childVC.tabBarItem.selectedImage?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        self.tabBar.tintColor = UIColor.orange
        self.addChildViewController(navVC)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
