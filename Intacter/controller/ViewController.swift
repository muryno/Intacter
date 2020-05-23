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
        
        let headers: HTTPHeaders = [
                   .authorization(username: "test@email.com", password: "testpassword"),
                   .accept("application/json")
            
            
               ]

               AF.request("https://httpbin.org/headers", headers: headers).responseJSON { response in
                   debugPrint(response)
               }

    }
    
    
 
    func Loading() {
        
    }
    
    func LoadingFail(msg: String) {
        
    }
    
    func LoadingSuccessfull(msh: String) {
        
    }
    
    
    
    func invalidateEmail(email: String) {
        
        
    }
    
    func invalidatePassword(password: String) {
        
    }
    

    
    


}

