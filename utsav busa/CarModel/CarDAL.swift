//
//  CarDAL.swift
//  utsav busa
//
//  Created by Utsav busa on 17/11/22.
//

import UIKit

class CarDAL: NSObject {

   class func getCarDetails(CarId:Int32)->[CarV]
    {
        var carvs:[CarV] = []
        
        let dbconn = FMDatabase(path: Utility.getPath(Utility.dbName))
        
        if dbconn.open(){
            
            let quary = "select * from carDetail where CarId = \(CarId)"
            do{
                let resultSet = try dbconn.executeQuery(quary, values: [])
                
                while (resultSet.next()){
                    
                    let c:CarV = CarV()
                    
                    c.CarId = resultSet.int(forColumn: "carId")
                    c.carDetailsid = resultSet.int(forColumn: "carDetailsid")
                    c.CarModelName = resultSet.string(forColumn: "CarModelName")
                 
                    
                    carvs.append(c)
                }
            }
            catch{
                print(error)
            }
            
        }
        else{
            print("not connect datatabse")
        }
        dbconn.close()
        
        
        return carvs
    }
}
