//
//  loginProtocol.swift
//  Intacter
//
//  Created by Muraino Yakubu on 5/23/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import Foundation

protocol LoginView : GeneralLoading {
 
    
    func invalidateEmail(email : String)
    
     func invalidatePassword(password : String)
    
    
}
