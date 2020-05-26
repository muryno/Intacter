//
//  LoginPresenter.swift
//  Intacter
//
//  Created by Muraino Yakubu on 5/23/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import Foundation
import Alamofire



class LoginPresenter {
    var callBack : LoginView
    init(_ cllBack : LoginView) {
        self.callBack = cllBack
    }
    
    func inValidateLogin(email : String, passwrd : String){
        
        callBack.Loading()
        
        if email == ""{
            callBack.invalidateEmail(email: "Kindly provide your email! ")
            return 
        }
        
        if passwrd == ""{
            callBack.invalidatePassword(password: "Kindly provide your password! ")
           return
      }
              
        
        
    
        
        let parameters : Parameters = ["email":email, "password":passwrd]
        


        AF.request(URL.init(string: Utils.BaseUrl(url: "user/login"))!, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: Utils.Header()).responseDecodable(of: UserBase.self) { (response) in
            
            switch response.result {

            case .success(_) :
                   guard let films = response.value else { return }
                   
                if !films.error &&  films.data != nil {
                    
        //          print(films.data)
                    
              MemoryManager().saveUser(usr: films.data!)
                   
                    self.callBack.LoadingSuccessfull(msg : films.message)

                
                    print(" See mee oga \( MemoryManager().getUser())")
                            
             }else{
                     self.callBack.LoadingFail(msg : films.message)
                }
                        
                
            case .failure(let error):
                self.callBack.LoadingFail(msg : "\(error)")
                 break
            }
                            
        
    


    }
    }
}
