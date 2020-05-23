//
//  ViewController.swift
//  Intacter
//
//  Created by Muraino Yakubu on 5/23/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, LoginView{

    var presenter : LoginPresenter!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        presenter = LoginPresenter(self)
        presenter.inValidateLogin(email : "muraino.yakub@connectrail.net", passwrd : "stylemuryne")
        

    }
    
    
 
    func Loading() {
        
    }
    
    func LoadingFail(msg: String) {
        
    }
    
     func LoadingSuccessfull(msg: String) {
        
    }
    
    
    
    func invalidateEmail(email: String) {
        print(email)
        
    }
    
    func invalidatePassword(password: String) {
        print(password)
    }
    

    
    


}

