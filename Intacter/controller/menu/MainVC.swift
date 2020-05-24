//
//  MainVC.swift
//  Intacter
//
//  Created by Muraino Yakubu on 5/24/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

  
    @IBAction func menuOption(_ sender: Any) {
          print("indexPath")
        NotificationCenter.default.post(name: NSNotification.Name("MenuBarSideBar"), object: nil)
    }
    
    
}
