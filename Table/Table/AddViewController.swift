//
//  AddViewController.swift
//  Table
//
//  Created by 조주혁 on 2020/06/09.
//  Copyright © 2020 Ju-Hyuk Cho. All rights reserved.
//

import UIKit

var items: [String] = []
var startDate: [String] = []
var finishDate: [String] = []
var price: [String] = []


class AddViewController: UIViewController {

    @IBOutlet var btnDone: UIBarButtonItem!
    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblStartDate: UILabel!
    @IBOutlet var lblFinishDate: UILabel!
    @IBOutlet var lblPrice: UILabel!
    @IBOutlet var textName: UITextField!
    @IBOutlet var textStartDate: UITextField!
    @IBOutlet var textFinishDate: UITextField!
    @IBOutlet var textPrice: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createFirstDatePicker()
        createSecondDatePicker()

        // Do any additional setup after loading the view.
    }
    
    func createFirstDatePicker() {
        textStartDate.textAlignment = .center

        let toolBar = UIToolbar()
        toolBar.sizeToFit()

        let doneFirstBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneFirstPressed))
    
        toolBar.setItems([doneFirstBtn], animated: true)
       

        textStartDate.inputAccessoryView = toolBar
      

        textStartDate.inputView = datePicker
        
        datePicker.datePickerMode = .date
    }
    
    @objc func doneFirstPressed() {
           let formatter = DateFormatter()
           formatter.dateStyle = .medium
           formatter.timeStyle = .none
           formatter.locale = Locale(identifier: "ko")
           textStartDate.text = formatter.string(from: datePicker.date)
           self.view.endEditing(true)
    }
    
    func createSecondDatePicker() {
        
        textFinishDate.textAlignment = .center

        let toolBar = UIToolbar()
        toolBar.sizeToFit()

        
        let doneSecondBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneSecondPressed))

       
        toolBar.setItems([doneSecondBtn], animated: true)

       
        textFinishDate.inputAccessoryView = toolBar
        textStartDate.inputView = datePicker
        textFinishDate.inputView = datePicker

        datePicker.datePickerMode = .date
    }

    @objc func doneSecondPressed() {
           let formatter = DateFormatter()
           formatter.dateStyle = .medium
           formatter.timeStyle = .none
           formatter.locale = Locale(identifier: "ko")
           textFinishDate.text = formatter.string(from: datePicker.date)
           self.view.endEditing(true)
    }
    
    @IBAction func btnAddDone(_ sender: UIBarButtonItem) {
        items.append(textName.text!)
        textName.text = ""
        
        startDate.append(textStartDate.text!)
        textStartDate.text = ""
        
        finishDate.append(textFinishDate.text!)
        textFinishDate.text = ""
        
        price.append(textPrice.text!)
        textPrice.text = ""
        
        _ = navigationController?.popViewController(animated: true)
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
