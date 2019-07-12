//
//  UserListInterfaces.swift
//  CleanSwift
//
//  Created by Mohammad Tahir on 11/07/19.
//  Copyright © 2019 iOSMaster. All rights reserved.
//

import Foundation

typealias Completion = () -> ()

protocol UserListPresentable { // Presenter
    func presentFetchUserListResult(with response: UserListModels.Response)
    func presentUserListError(error: Error)
}

protocol UserListDisplayable: class { // View Controlelr
    func displayFetchUserListResult(with response: UserListModels.ViewModel)
    func displayUserListError(errorMessage: String)
}

protocol UserListBusinessLogic { // Interactor
    func fetchUserList(with request: UserListModels.FetchRequest)
}

protocol UserListRoutable { // Router
    // Pass your data which you want
    func pushToUserDetailsViewController()
}

protocol UserListStoreInterface { // Store
    
    func fetchUserListFromApi(with request: UserListModels.FetchRequest, completion: Completion)
}
