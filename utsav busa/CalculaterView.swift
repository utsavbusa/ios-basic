//
//  CalculaterView.swift
//  utsav busa
//
//  Created by Utsav busa on 11/11/22.
//

import UIKit

class CalculaterView: UIViewController {

    @IBOutlet weak var FNumber: UITextField!
    
    @IBOutlet weak var SNumber: UITextField!
    
    
    @IBOutlet weak var DisplayAns: UITextField!
    
    var FirstNumber:Int = 0
    var SecondNumber:Int = 0
    var ThirdNumber:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Pluse(_ sender: Any) {
         FirstNumber = Int(FNumber.text ?? "" ) ?? 0
        
         SecondNumber = Int(SNumber.text ?? "" ) ?? 0
        
         ThirdNumber = FirstNumber + SecondNumber
        
        DisplayAns.text = String(ThirdNumber)
        
        
    }
    
    @IBAction func Minize(_ sender: Any) {
        FirstNumber = Int(FNumber.text ?? "" ) ?? 0
        
        SecondNumber = Int(SNumber.text ?? "" ) ?? 0
        
         ThirdNumber = FirstNumber - SecondNumber
        
        DisplayAns.text = String(ThirdNumber)
        
    }
    @IBAction func Divided(_ sender: Any) {
        FirstNumber = Int(FNumber.text ?? "" ) ?? 0
        
        SecondNumber = Int(SNumber.text ?? "" ) ?? 0
        
         ThirdNumber = FirstNumber / SecondNumber
        
        DisplayAns.text = String(ThirdNumber)
    }
    
    @IBAction func Multiplication(_ sender: Any) {
        FirstNumber = Int(FNumber.text ?? "" ) ?? 0
        
        SecondNumber = Int(SNumber.text ?? "" ) ?? 0
        
         ThirdNumber = FirstNumber * SecondNumber
        
        DisplayAns.text = String(ThirdNumber)
    }
    
    
    @IBAction func Clear(_ sender: Any) {
        
        FNumber.text = ""
        SNumber.text = ""
        DisplayAns.text = ""
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
