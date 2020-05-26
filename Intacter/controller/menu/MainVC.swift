//
//  MainVC.swift
//  Intacter
//
//  Created by Muraino Yakubu on 5/24/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    
      var tabSwipe : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(showProfile), name: NSNotification.Name("ShowProfile"), object: nil)
        
        
            NotificationCenter.default.addObserver(self, selector: #selector(showInbox), name: NSNotification.Name("ShowInbox"), object: nil)
        
            NotificationCenter.default.addObserver(self, selector: #selector(showPrint), name: NSNotification.Name("ShowPrint"), object: nil)
        
         
    }
    
    @objc func showProfile(){
        performSegue(withIdentifier: "profile_id", sender: nil)
        
    }
    
    @objc func showInbox(){
        performSegue(withIdentifier: "inbox_id", sender: nil)
     }
    
    @objc func showPrint(){
        performSegue(withIdentifier: "print_ui", sender: nil)
     }
    
    @IBAction func menuOption(_ sender: Any) {
          print("indexPath")
        NotificationCenter.default.post(name: NSNotification.Name("MenuBarSideBar"), object: nil)
    }
    
    
}
