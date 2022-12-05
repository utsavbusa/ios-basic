//
//  carDAL.swift
//  utsav busa
//
//  Created by Utsav busa on 16/11/22.
//

import UIKit

class carDAL: NSObject {
    
    //DAL database access layer
    
    
    class func getCars()->[Car]
    {
        var cars:[Car] = []
        
        let dbconn = FMDatabase(path: Utility.getPath(Utility.dbName))
        
        if dbconn.open(){
            
            let quary = "select * from carTable"
            do{
                let resultSet = try dbconn.executeQuery(quary, values: [])
                
                while (resultSet.next()){
                    
                    let c:Car = Car()
                    
                    c.CarId = resultSet.int(forColumn: "carId")
                    c.CarName = resultSet.string(forColumn: "carName")!
                    c.BrandName = resultSet.string(forColumn: "brandName")!
                    c.BrandLogo = resultSet.string(forColumn: "image") ?? "jeep.png"
                    
                    cars.append(c)
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
        
        return cars
    }
    
    class func AddCar(Ca:Car)->(Bool){
        
        var status : Bool = Bool()
        let dbconn = FMDatabase(path: Utility.getPath(Utility.dbName))
        
        if dbconn.open(){
            
            let quary = "insert into carTable(carName,brandName) values('\(Ca.CarName)','\(Ca.BrandName)')"
            do{
                let resultSet = try dbconn.executeUpdate(quary, withArgumentsIn: [])
                
                if resultSet {
                    status = true
                }
                else{
                    status = false
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
        
        
        return true
    }
    
    class func DeletCar(Ca:Car)->(Bool){
        
        var status : Bool = Bool()
        let dbconn = FMDatabase(path: Utility.getPath(Utility.dbName))
        
        if dbconn.open(){
            
            let quary = "delete from carTable where carId = '\(Ca.CarId)'"
            do{
                let resultSet = try dbconn.executeUpdate(quary, withArgumentsIn: [])
                
                if resultSet {
                    status = true
                }
                else{
                    status = false
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
        
        return true
        
    }
    
    class func EditCar(Ca:Car)->(Bool){
        
        var status : Bool = Bool()
        let dbconn = FMDatabase(path: Utility.getPath(Utility.dbName))
        
        if dbconn.open(){
            
            let quary = "update carTable set carName = '\(Ca.CarName)',brandName = '\(Ca.BrandName)' where carId = '\(Ca.CarId)' "
            do{
                let resultSet = try dbconn.executeUpdate(quary, withArgumentsIn: [])
                
                if resultSet {
                    status = true
                }
                else{
                    status = false
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
        
        return true
        
    }
    
}
