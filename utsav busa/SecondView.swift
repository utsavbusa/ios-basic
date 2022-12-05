//
//  SecondView.swift
//  utsav busa
//
//  Created by Utsav busa on 11/11/22.
//

import UIKit

class SecondView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func profileinsecondscreeen(_ sender: Any) {
        let Profile : Profileview = storyboard?.instantiateViewController(withIdentifier: "Profileview_") as! Profileview
        
        self.navigationController?.pushViewController(Profile, animated: true)
    }
   
    
    @IBAction func Tableview(_ sender: Any) {
        let TableV : TableViewImplement = storyboard?.instantiateViewController(withIdentifier: "TableView_vs") as! TableViewImplement
        self.navigationController?.pushViewController(TableV, animated: true)
    }
}
