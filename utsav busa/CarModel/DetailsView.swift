//
//  DetailsView.swift
//  utsav busa
//
//  Created by Utsav busa on 16/11/22.
//

import UIKit

class DetailsView: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var BigImage: UIImageView!
    
    
    @IBOutlet weak var carName: UILabel!
    
    
    @IBOutlet weak var BrandName: UILabel!
    
    
    @IBOutlet weak var CarModelTabelView: UITableView!
    
    var c:Car = Car()
    var carvs:[CarV] = []
    
    override func viewDidLoad() {
        
        self.title = c.BrandName
        super.viewDidLoad()

        carName.text = c.CarName
        BrandName.text = c.BrandName
        BigImage.image = UIImage(named: c.BrandLogo ?? "jeep.png" )
        
        carvs = CarDAL.getCarDetails(CarId: c.CarId)
        print(carvs.count)
        
        CarModelTabelView.delegate = self
        CarModelTabelView.dataSource = self
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return carvs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CarModelTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CarModelTableViewCell
       
        let C:CarV = carvs[indexPath.row]
        
        
        cell.lblCarModel.text = C.CarModelName
        
        return cell
        
        
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
