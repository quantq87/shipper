//
//  ViewController.swift
//  giaohanggiare
//
//  Created by tran.quoc.quan on 2/7/17.
//  Copyright © 2017 tran.quoc.quan. All rights reserved.
//

import UIKit
import SideMenuController

class ViewController: UIViewController {
    
    static var fromStoryboard: ViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "TEEEST"
    }
    
    @IBAction func dismissAction() {
        dismiss(animated: true, completion: nil)
    }
}
