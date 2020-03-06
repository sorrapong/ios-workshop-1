//
//  ViewController.swift
//  firstapp
//
//  Created by Sorrapong W on 6/3/2563 BE.
//  Copyright © 2563 Sorrapong W. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var surnameTxt: UITextField!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var steplbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func check(sender : UIButton){
        let alert = UIAlertController(title: "เปลี่ยนข้อมูล", message: "ต้องการแก้ไขรูปภาพหรือไม่?", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
            self.image.image = UIImage(named: "cat.png")
        }))	
        
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    @IBAction func step(_ sender: UIStepper) {
        print(sender.value)
        steplbl.text = String(sender.value)
    }
    
    @IBAction func `switch`(_ sender: UISwitch) {
        print(sender.isOn)
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        print(sender.value)
        
        self.image.alpha = CGFloat(sender.value)
    }
}

