//
//  UserListWorker.swift
//  CleanSwift
//
//  Created by Mohammad Tahir on 11/07/19.
//  Copyright © 2019 iOSMaster. All rights reserved.
//

import Foundation

struct UserListWorker {
    
    private let store: UserListStoreInterface?
    
    public init(store: UserListStoreInterface?) {
        
        self.store = store
    }
}

// MARK: - UserListStoreInterface -

extension UserListWorker: UserListStoreInterface {
    
    func fetchUserListFromApi(with request: UserListModels.FetchRequest, completion: () -> ()) {
        
        self.store?.fetchUserListFromApi(with: request, completion: completion)
    }
}
