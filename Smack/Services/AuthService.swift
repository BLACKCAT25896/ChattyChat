//
//  AuthService.swift
//  Smack
//
//  Created by kamrujjaman Joy on 6/13/20.
//  Copyright © 2020 kamrujjaman Joy. All rights reserved.
//

import Foundation
import Alamofire

class AuthService {
    static let instance = AuthService()
    let defaults = UserDefaults.standard
    
    var isLoggedIn : Bool {
        get{
            return defaults.bool(forKey: LOGGED_IN_KEY)
            
        }
        set{
            return defaults.set(newValue, forKey: LOGGED_IN_KEY)
            
        }
    }
    
    var authToken : String {
        get{
            return defaults.value(forKey: TOKEN_KEY) as! String
            
        }
        set{
            return defaults.set(newValue, forKey: TOKEN_KEY)
            
        }
    }
    
    var userEmail : String{
        get{
            return defaults.value(forKey: USER_EMAIL) as! String
            
        }
        set{
            return defaults.set(newValue, forKey: USER_EMAIL)
            
        }
    }
    
    func registerUser(email : String, password: String, completion : @escaping CompletionHandler)   {
        
        let lowerCaseEmail = email.lowercased()
        
        let header = [
        
            "Content-Type" : "application/json; charset=utf-8"
        ]
        
        let body : [String:Any] = [
        "email" : lowerCaseEmail,
        "password" : password
        ]
        Alamofire.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseString { (response) in
            if response.result.error == nil
            {
                completion(true)
            }else{
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
        
    }
    
    
}
