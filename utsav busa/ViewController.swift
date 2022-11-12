//
//  ViewController.swift
//  utsav busa
//
//  Created by Utsav busa on 10/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextFiled: UITextField!
    
    @IBOutlet weak var DisplayName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Submit(_ sender: Any) {
        
        DisplayName.text = "your name is " + TextFiled.text!
    }
}

