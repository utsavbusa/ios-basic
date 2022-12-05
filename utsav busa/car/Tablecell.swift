//
//  Tablecell.swift
//  utsav busa
//
//  Created by Utsav busa on 15/11/22.
//

import UIKit

class Tablecell: UITableViewCell {
    
    
    @IBOutlet weak var iblbal: UILabel!
    
    @IBOutlet weak var imageviewlogo: UIImageView!
    
    @IBOutlet weak var brandName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
