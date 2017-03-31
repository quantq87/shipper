//
//  HomeTabBarViewController.swift
//  shipper
//
//  Created by tran.quoc.quan on 3/30/17.
//  Copyright © 2017 tran.quoc.quan. All rights reserved.
//

import UIKit

enum TabBarTagIndex: Int {
    case homeTag = 1
    case locationTag = 2
    case settingTag
}

class HomeTabBarViewController: BaseTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        clearTabBarButtons();
        createTabBarButtons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func clearTabBarButtons() {
        self.viewControllers = nil
    }
    
    func createTabBarButtons() {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        // let navbarFont = UIFont(name: "Ubuntu", size: 17) ?? UIFont.systemFont(ofSize: 17)
        let barbuttonFont = UIFont(name: "Ubuntu-Light", size: 11) ?? UIFont.systemFont(ofSize: 11)
        
        let tabBarItem1 = UITabBarItem(title: "Home", image: UIImage(named: "package-normal-icon"), selectedImage: UIImage(named: "package-select-icon"))
        tabBarItem1.tag = TabBarTagIndex.homeTag.rawValue
        let homNavigationController = storyboard.instantiateViewController(withIdentifier: "HomeNavigationController") as! BaseNavigationController
        tabBarItem1.setTitleTextAttributes([NSFontAttributeName: barbuttonFont, NSForegroundColorAttributeName:UIColor.gray], for: UIControlState.normal)
        homNavigationController.tabBarItem = tabBarItem1
        
        
        let tabBarItem2 = UITabBarItem(title: "Location", image: UIImage(named: "location-normal-icon"), selectedImage: UIImage(named: "location-select-icon"))
        tabBarItem2.setTitleTextAttributes([NSFontAttributeName: barbuttonFont, NSForegroundColorAttributeName:UIColor.gray], for: UIControlState.normal)
        tabBarItem2.tag = TabBarTagIndex.locationTag.rawValue
        let locationNaviController = storyboard.instantiateViewController(withIdentifier: "LocationNavigationController") as! BaseNavigationController
        locationNaviController.tabBarItem = tabBarItem2
        
        
        let tabBarItem3 = UITabBarItem(title: "Setting", image: UIImage(named: "setting-normal-icon"), selectedImage: UIImage(named: "setting-select-icon"))
        tabBarItem3.setTitleTextAttributes([NSFontAttributeName: barbuttonFont, NSForegroundColorAttributeName:UIColor.gray], for: UIControlState.normal)
        tabBarItem3.tag = TabBarTagIndex.settingTag.rawValue
        let settingNaviController = storyboard.instantiateViewController(withIdentifier: "SettingNavigationController") as! BaseNavigationController
        settingNaviController.tabBarItem = tabBarItem3
        
        self.viewControllers = [homNavigationController, locationNaviController, settingNaviController]
        
    }

}
