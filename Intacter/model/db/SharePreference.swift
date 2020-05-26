//
//  sharePreference.swift
//  Payme
//
//  Created by Muraino Yakubu on 5/23/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import Foundation


class MemoryManager {
    
 
    init() {
    }
    
    
       func saveUser(usr : User?){
       
        guard let userData = usr else {
             print("No phone to submit")
             return
         }

     //   print("NAME OGAA \( userData )")
            
              let currentLevelKey = "currentLevel"
        

    
        do {let encodedData = try JSONEncoder().encode(userData)
            UserDefaults.standard.set(encodedData, forKey: currentLevelKey)
            
        }catch{
            print("Error \(error)")
        }
        
    }
    
    

    func getUser()->User{

           let currentLevelKey = "currentLevel"
        
        if let configurationData = UserDefaults.standard.value(forKeyPath: currentLevelKey) as? Data{
            
            do {  let dataResult = try  JSONDecoder().decode(User.self, from: configurationData)
                return dataResult
            }
            catch{
                print("userDefault\(error)")
            }
            
        }
     
        return User()
    }

}
