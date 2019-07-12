//
//  UserListRouter.swift
//  CleanSwift
//
//  Created by Mohammad Tahir on 11/07/19.
//  Copyright © 2019 iOSMaster. All rights reserved.
//

import UIKit

struct UserListRouter {
    
    private var viewController: UIViewController!
    
    init(viewController: UIViewController) {
        
        self.viewController = viewController
    }
}


// MARK: - UserListRoutable -

extension UserListRouter: UserListRoutable {
    
    func pushToUserDetailsViewController() {
        // you can passed your data by the help of function, add more params
        let userDetailsViewController = UserDetailsViewController.init(nibName: "UserDetailsViewController", bundle: .main)
        self.viewController.navigationController?.pushViewController(userDetailsViewController, animated: true)
    }
}
