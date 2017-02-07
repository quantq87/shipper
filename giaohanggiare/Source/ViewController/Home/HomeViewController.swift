//
//  HomeViewController.swift
//  giaohanggiare
//
//  Created by tran.quoc.quan on 2/7/17.
//  Copyright © 2017 tran.quoc.quan. All rights reserved.
//

import UIKit
import SideMenuController

class HomeViewController: SideMenuController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        performSegue(withIdentifier: "showCenterController1", sender: nil)
        performSegue(withIdentifier: "containSideMenu", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
