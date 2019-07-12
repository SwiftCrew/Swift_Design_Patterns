//
//  UserList.swift
//  MVC
//
//  Created by Mohammad Tahir on 11/07/19.
//  Copyright © 2019 iOSMaster. All rights reserved.
//

import Foundation

struct UserList {
    
    let name: String
    
    //static data
    static let users: [UserList] = {
        
        return [
            UserList(name: "Test 1"),
            UserList(name: "Test 2"),
            UserList(name: "Test 3"),
            UserList(name: "Test 4"),
            UserList(name: "Test 5")
        ]
    }()
}
