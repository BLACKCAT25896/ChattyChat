//
//  Constants.swift
//  Smack
//
//  Created by kamrujjaman Joy on 5/30/20.
//  Copyright © 2020 kamrujjaman Joy. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success : Bool) -> ()


//url constants

let BASE_URL = "https://chattychatjoy.herokuapp.com/v1"
let URL_REGISTER = "\(BASE_URL)account/register"


//segue
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWINT_TO_CHANNEL = "unwindtohannel"

//user defaults
let LOGGED_IN_KEY = "loggedIn"
let TOKEN_KEY = "token_key"
let USER_EMAIL = "userEmail"





