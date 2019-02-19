//
//  welcomeProfile.swift
//  run
//
//  Created by Yeo Chun Sheng Joel on 17/2/19.
//  Copyright © 2019 Yeo Chun Sheng Joel. All rights reserved.
//

import Foundation
import UIKit
import Lottie

class welcomeProfile: UIViewController{
    
    @IBOutlet weak var gifView: UIImageView!
    @IBOutlet weak var txtName: UITextField!
    
    private var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        gifView.loadGif(name: "welcomeCartoon")
        txtName.underlined()
        exitTxtfield()
        
        //dobtextSetUp()
    
    }
    
    func exitTxtfield(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(welcomeProfile.viewTapped(gestureRecongizer:)))
        view.addGestureRecognizer(tapGesture)
    }
    
//    func dobtextSetUp(){
//        datePicker = UIDatePicker()
//        datePicker?.datePickerMode = .date
//        datePicker?.addTarget(self, action: #selector(welcomeProfile.dateChanged(datePicker:)), for: .valueChanged)
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(welcomeProfile.viewTapped(gestureRecongizer:)))
//        view.addGestureRecognizer(tapGesture)
//        txtDOB.inputView = datePicker
//    }
    
//    @objc func dateChanged(datePicker: UIDatePicker){
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "MM/dd/yyyy"
//        txtDOB.text = dateFormatter.string(from: datePicker.date)
//
//    }
    
    @objc func viewTapped(gestureRecongizer: UITapGestureRecognizer){
        view.endEditing(true)
    }
    
    

}
