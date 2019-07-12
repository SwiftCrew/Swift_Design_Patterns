//
//  UserListPresenter.swift
//  CleanSwift
//
//  Created by Mohammad Tahir on 11/07/19.
//  Copyright © 2019 iOSMaster. All rights reserved.
//

import Foundation

struct UserListPresenter {
    
    private weak var viewController: UserListDisplayable?
    
    init(_ viewController: UserListDisplayable?) {
        self.viewController = viewController
    }
}

// MARK: - UserListPresentable -

extension UserListPresenter: UserListPresentable {
    
    func presentFetchUserListResult(with response: UserListModels.Response) {
        // Create ViewModel from Api response
        // I am just using static values
        let veiwModel = UserListModels.ViewModel(userList: UserListModels.users)
        self.viewController?.displayFetchUserListResult(with: veiwModel)
    }
    
    func presentUserListError(error: Error) {
        // Create your error, status code, message, what ever you want just pass add your params in function
        self.viewController?.displayUserListError(errorMessage: "Something went wrong.")
    }
}
