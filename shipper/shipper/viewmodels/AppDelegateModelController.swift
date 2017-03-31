//
//  AppDelegateModelController.swift
//  shipper
//
//  Created by tran.quoc.quan on 3/31/17.
//  Copyright © 2017 tran.quoc.quan. All rights reserved.
//

import UIKit

class AppDelegateModelController: NSObject {
    public func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) {
        configurationNavigationBar()
    }
    
    // MARK: Configuration Function
    func configurationNavigationBar() {
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.tintColor = UIColor.orange
        navigationBarAppearace.barTintColor = UIColor.orange
        navigationBarAppearace.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
    }
    
    func uicolorFromHex(rgbValue:UInt32)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:1.0)
    }
}
