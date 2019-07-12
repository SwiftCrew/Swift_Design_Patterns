//
//  UserListInteractor.swift
//  CleanSwift
//
//  Created by Mohammad Tahir on 11/07/19.
//  Copyright © 2019 iOSMaster. All rights reserved.
//

import Foundation

struct UserListInteractor {
    
    private let presenter: UserListPresentable
    private let worker: UserListStoreInterface

    init(presenter: UserListDisplayable) {
        
        self.presenter = UserListPresenter(presenter)
        self.worker = UserListMemoryStore()
    }
}

// MARK: - UserListBusinessLogic -

extension UserListInteractor: UserListBusinessLogic {
    
    func fetchUserList(with request: UserListModels.FetchRequest) {
        
        self.worker.fetchUserListFromApi(with: request) {
            // Do here
            // Api response
            print("fetched succussfully api response")
            //Success
            // Pass your api response,
            self.presenter.presentFetchUserListResult(with: UserListModels.Response(userList: UserListModels.users))
            //error
          //  self.presenter.presentUserListError(error: Error as! Error.self)
        }
    }
}
