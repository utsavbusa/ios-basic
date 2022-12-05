//
//  Profileview.swift
//  utsav busa
//
//  Created by Utsav busa on 14/11/22.
//

import UIKit

class Profileview: UIViewController {
    
    
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.layer.shadowColor = UIColor.black.cgColor
        image.layer.shadowOpacity = 1
        image.layer.shadowOffset = .zero
        image.layer.shadowRadius = 10
        
        
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
