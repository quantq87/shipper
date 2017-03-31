//
//  PackageListViewController.swift
//  shipper
//
//  Created by tran.quoc.quan on 3/30/17.
//  Copyright © 2017 tran.quoc.quan. All rights reserved.
//

import UIKit

class PackageListViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var _packageTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Packages"
        // _packageTableView.register(PackageTableCell.self, forCellReuseIdentifier: "PackageCellIdentifier")
        _packageTableView.delegate = self
        _packageTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Override`
    
//    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 150
//    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PackageCellIdentifier") as! PackageTableCell
        cell.setDataForCell(data: PackageObj())
        return cell
    }
}

class PackageTableCell: UITableViewCell {
    
    @IBOutlet weak var _orderLabel: UILabel!
    @IBOutlet weak var _packageNameLabel: UILabel!
    @IBOutlet weak var _packageDetailLabel: UILabel!
    @IBOutlet weak var _packageInfoLabel: UILabel!
    @IBOutlet weak var _totalPayLabel: UILabel!
    @IBOutlet weak var _packageTimeLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        clearDataForCell();
    }
    
    func clearDataForCell() {
        self._orderLabel.text = "0"
        self._packageNameLabel.text = ""
        self._packageDetailLabel.text = ""
        self._packageInfoLabel.text = ""
        self._totalPayLabel.text = "0đ"
        self._packageTimeLabel.text = "";
    }
    
    public func setDataForCell(data: PackageObj) {
        
        if let label = self._orderLabel {
            label.text = "1"
        }
        if let label = self._packageNameLabel {
            label.text = "Package Name"
        }
        
        if let label = self._packageDetailLabel {
            label.text = "Một túi nhỏ dài "
        }
        
        if let label = self._packageInfoLabel {
            label.text = "Túi Channel màu đem"
        }
        
        if let label = self._totalPayLabel {
            label.text = "180000đ"
        }
        
        if let label = self._packageTimeLabel {
            label.text = "từ 20 phút trước"
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

class PackageObj: NSObject {
    var id:String = ""
    var detail:String = ""
    var information:String = ""
    var time:Int = 0
    var money:CGFloat = 0.0
    
    
}


