//
//  ContainerVC.swift
//  Intacter
//
//  Created by Muraino Yakubu on 5/23/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {


    @IBOutlet weak var menulistconstrain: NSLayoutConstraint!
    
    var tabSwipe : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(toggleMenuBar), name: NSNotification.Name("MenuBarSideBar"), object: nil)
    }
    
    
    
   @objc func toggleMenuBar(){
        if tabSwipe {
            tabSwipe = false
            menulistconstrain.constant = -240
        }else{
             menulistconstrain.constant = 0
            tabSwipe = true
    }

    UIView.animate(withDuration: 0.3){
        self.view.layoutIfNeeded()}
    }

}
