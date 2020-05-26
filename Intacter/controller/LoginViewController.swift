//
//  ViewController.swift
//  Intacter
//
//  Created by Muraino Yakubu on 5/23/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController, LoginView{

    var presenter : LoginPresenter!
    
    @IBOutlet weak var txtemail: UITextField!
    @IBOutlet weak var txtpassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        presenter = LoginPresenter(self)
     
        

    }
    
    @IBAction func loginbtn(_ sender: Any) {
        
        presenter.inValidateLogin(email : txtemail.text!, passwrd : txtpassword.text!)
    }
    
 
    func Loading() {
          self.showSpinner(onView: self.view)
    }
    
    func LoadingFail(msg: String) {
           self.removeSpinner()
           displayMessage(status : true, msg : msg)
    }
    
     func LoadingSuccessfull(msg: String) {
                performSegue(withIdentifier: "goHome", sender: nil)
             displayMessage(status : true, msg : msg)
           self.removeSpinner()

    }
    
    
    
    func invalidateEmail(email: String) {
        displayMessage(status : false, msg : email)
        
    }
    
    func invalidatePassword(password: String) {
        print(password)
        displayMessage(status : false, msg : password)
    }
    

    

    func displayMessage(status : Bool, msg : String ){
           
           var state : String!
         if status == false {  state = "Error" }else { state = "Success"}
           let alertController = UIAlertController(title: state,
                                                               message: msg,
                                                               preferredStyle: .alert)
                   
                       let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                       alertController.addAction(cancelAction)
                       self.present(alertController, animated: true, completion: nil)
       }
    


}

