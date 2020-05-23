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

        print("NAME OGAA \( userData )")
            
              let currentLevelKey = "currentLevel"
        

        do {let encodedData = try NSKeyedArchiver.archivedData(withRootObject: userData, requiringSecureCoding: false)
            
            let userDefaults = UserDefaults.standard
                   userDefaults.set(encodedData, forKey: currentLevelKey)
                    userDefaults.synchronize()
        }catch{
            print("Error \(error)")
        }
       
        

        
    }

    func getUser()->User{
        let preferences = UserDefaults.standard

           let currentLevelKey = "currentLevel"
        
      
        //print(decodedTeams.name)

        if preferences.object(forKey: currentLevelKey) != nil {
            
          let decoded  = UserDefaults.standard.object(forKey: currentLevelKey) as! Data
            let resultData  = NSKeyedUnarchiver
                .unarchiveObject(with: decoded) as! User
            
            return resultData
        }
        
        return User()
    }

}
