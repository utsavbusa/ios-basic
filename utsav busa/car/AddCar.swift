//
//  AddCar.swift
//  utsav busa
//
//  Created by Utsav busa on 17/11/22.
//

import UIKit

class AddCar: UIViewController {
    
    @IBOutlet weak var submitButtonOutlet: UIButton!
    
    @IBOutlet weak var TextFild1: UITextField!
    
    @IBOutlet weak var TextFild2: UITextField!
    
    var cac:Car = Car()
    var fromscreen = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if fromscreen == "edit"{
            self.title = cac.CarName
            TextFild1.text = cac.CarName
            TextFild2.text = cac.BrandName
            submitButtonOutlet.setTitle("Update", for: .normal)
        }
        else{
            self.title = "Add new Car"
        }
    }
    
    
    @IBAction func Submit(_ sender: Any) {
        
        TextFild1.resignFirstResponder()
        TextFild2.resignFirstResponder()
        
        
        
        let c:Car = Car()
        
        c.CarName = TextFild1.text!
        c.BrandName = TextFild2.text!
        
        var status:Bool = false
        
        if fromscreen == "edit"{
            
            c.CarId = cac.CarId
            status = carDAL.EditCar(Ca: c)
            
        }
        else{
            
            status = carDAL.AddCar(Ca: c)
        }
        
        
        
        
       
        
        if status{
            let alert = UIAlertController(title: "Favourite car", message: fromscreen == "edit" ? "you just upadate \(c.CarName)" :"you just add new car successfully ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default,handler: {UIAlertAction in
                
                self.navigationController?.popViewController(animated: true)
                
            }))
            self.present(alert, animated: true)
        }
        
    }
    
    @IBAction func Clear(_ sender: Any) {
        TextFild1.text = ""
        TextFild2.text = ""
        
        TextFild1.resignFirstResponder()
        TextFild2.resignFirstResponder()
        
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
    
