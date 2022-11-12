//
//  Intererst.swift
//  utsav busa
//
//  Created by Utsav busa on 11/11/22.
//

import UIKit

class Intererst: UIViewController {
    
    var fNumber:Double = 0.0
    
    var sNumber:Double = 0.0
    
    var tNumber:Double = 0.0

    @IBOutlet weak var Amount: UITextField!
    
    @IBOutlet weak var interest: UITextField!
    
    
    @IBOutlet weak var year: UITextField!
    
    @IBOutlet weak var Display: UILabel!
    
    
    @IBAction func submit(_ sender: Any) {
        
        fNumber = Double(Amount.text ?? "" ) ?? 0.0
        
        sNumber = Double(interest.text ?? "" ) ?? 0.0
        
        tNumber = Double(year.text ?? "" ) ?? 0.0
        
        var ans = fNumber * sNumber * tNumber  / 100
        
        Display.text = String(ans)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
