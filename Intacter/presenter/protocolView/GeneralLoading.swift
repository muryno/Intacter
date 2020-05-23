//
//  GeneralLoading.swift
//  Intacter
//
//  Created by Muraino Yakubu on 5/23/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import Foundation



protocol GeneralLoading{
    
    func Loading()
    
    func LoadingFail(msg : String)
    
    func LoadingSuccessfull(msg : String)
}
