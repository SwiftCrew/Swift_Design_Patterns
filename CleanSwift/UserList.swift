//
//  UserList.swift
//  MVC
//
//  Created by Mohammad Tahir on 11/07/19.
//  Copyright © 2019 iOSMaster. All rights reserved.
//

import Foundation

enum UserListModels {
    
    struct FetchRequest {
        
    }
    
    struct UserList {
        let name: String
    }
    
    struct ViewModel {
        let userList: [UserList]
    }
    
    struct Response {
        let userList: [UserList]
    }
    
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

