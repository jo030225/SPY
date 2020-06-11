//
//  DetailViewController.swift
//  Table
//
//  Created by 조주혁 on 2020/06/09.
//  Copyright © 2020 Ju-Hyuk Cho. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var receiveItem = ""
    var receiveStartDate = ""
    var receiveFinishDate = ""
    var receivePrice = ""


   
    @IBOutlet var lblItemName: UILabel!
    @IBOutlet var lblStartDateName: UILabel!
    @IBOutlet var lblFinishDateName: UILabel!
    @IBOutlet var lblPriceName: UILabel!
    @IBOutlet var lblItem: UILabel!
    @IBOutlet var lblStartDate: UILabel!
    @IBOutlet var lblFinishDate: UILabel!
    @IBOutlet var lblPrice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblItem.text = receiveItem
        lblStartDate.text = receiveStartDate
        lblFinishDate.text = receiveFinishDate
        lblPrice.text = receivePrice + "원"
    }
    
    func receiveItem(_ item: String) {
        receiveItem = item 
    }
    
    func receiveStartDate(_ startDate: String) {
        receiveStartDate = startDate
    }
    
    func receiveFinishDate(_ finishDate: String) {
        receiveFinishDate = finishDate
    }
    
    func receivePrice(_ price: String) {
        receivePrice = price
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
