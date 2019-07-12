//
//  UserListDataSource.swift
//  MVC
//
//  Created by Mohammad Tahir on 11/07/19.
//  Copyright © 2019 iOSMaster. All rights reserved.
//

import Foundation

// Bussiness logic

class UserListViewModel: NSObject {
    
    // Its static data to show row on the table view, you can hit your api
    private let users: [UserList] = {
        
        return [
            UserList(name: "Test 1"),
            UserList(name: "Test 2"),
            UserList(name: "Test 3"),
            UserList(name: "Test 4"),
            UserList(name: "Test 5")
        ]
    }()
    
    override init() {
        super.init()
    }
    
    // Api, Custom Data etc
    func loadRequest() {

        // set data and create call back or delegate to notify controller to update view
    }
    
    var numberOfRows: Int {
        
        return self.users.count
    }
    
    func user(at index: Int) -> UserList {
        
        return self.users[index]
    }
}
