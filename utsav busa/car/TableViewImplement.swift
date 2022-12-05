//
//  TableViewImplement.swift
//  utsav busa
//
//  Created by Utsav busa on 14/11/22.
//

import UIKit

class TableViewImplement: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBAction func Add(_ sender: Any) {
        let acvc : AddCar = storyboard?.instantiateViewController(withIdentifier: "AddCar") as! AddCar
        
        self.navigationController?.pushViewController(acvc, animated:true)
    }
    
    var cars: [Car] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: Tablecell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Tablecell
        
        let t:Car = cars[indexPath.row]
        cell.iblbal.text = t.CarName
        cell.brandName.text = t.BrandName
        cell.imageviewlogo.image = UIImage(named: t.BrandLogo ?? "jeep.png" )
        
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "utsav busa \(section)"
    }
    
    

    @IBOutlet weak var Tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Tableview.delegate = self
        Tableview.dataSource = self
        
//        loadData()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        LoadCarData()
    }
    func LoadCarData(){
        cars = carDAL.getCars()
        Tableview.reloadData()
    }
    
//    func loadData(){
//        let t1:Car = Car()
//        t1.CarName = "rolls roys cullinen"
//        t1.BrandName = "rolls-roys"
//        t1.BrandLogo = "rr"
//        cars.append(t1)
//
//        let t2:Car = Car()
//        t2.CarName = "lambargini urus"
//        t2.BrandName = "land rover"
//        t2.BrandLogo = "lr"
//        cars.append(t2)
//    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let tdvc : DetailsView = storyboard?.instantiateViewController(withIdentifier: "DetailsView_vc") as! DetailsView
        
        let c:Car = cars[indexPath.row]
        print(c.CarId)
        tdvc.c = c
        self.navigationController?.pushViewController(tdvc, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let c:Car = self.cars[indexPath.row]
        
        let delet = UITableViewRowAction(style: .default, title: "Delet") { UITableViewRowAction, IndexPath in
            
            
            
            
            let alert = UIAlertController(title: "Favourite Car", message: "are you sure to delet \(c.CarName)", preferredStyle: .alert)
            
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default , handler: { UIAlertAction in
                
                let status = carDAL.DeletCar(Ca: c)
                
                if status{
                    self.LoadCarData()
                }
                
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .default , handler: { UIAlertAction in
                
            }))
            
            self.present(alert, animated: true)
        }
        let edit = UITableViewRowAction(style: .default, title: "Edit") { UITableViewRowAction, IndexPath in
            
            let acvc:AddCar = self.storyboard?.instantiateViewController(withIdentifier: "AddCar") as! AddCar
            
            acvc.cac = c
            acvc.fromscreen = "edit"
            
            
            self.navigationController?.pushViewController(acvc, animated: true
            )
                
        }
        edit.backgroundColor = .darkGray
        return [delet,edit]
    }
}

