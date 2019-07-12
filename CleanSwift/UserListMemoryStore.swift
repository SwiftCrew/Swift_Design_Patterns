//
//  UserListMemoryStore.swift
//  CleanSwift
//
//  Created by Mohammad Tahir on 12/07/19.
//  Copyright © 2019 iOSMaster. All rights reserved.
//

import Foundation

struct UserListMemoryStore: UserListStoreInterface {
    
    func fetchUserListFromApi(with request: UserListModels.FetchRequest, completion: Completion) {
        // do here network code
        completion()
    }
}
