//
//  HomeRouter.swift
//  CleanSwift
//
//  Created by Mohammad Tahir on 12/07/19.
//  Copyright © 2019 iOSMaster. All rights reserved.
//

import UIKit

struct HomeRouter {
    
    private var viewController: UIViewController!
    
    init(viewController: UIViewController) {
        
        self.viewController = viewController
    }
}

// MARK: - HomeRoutable -

extension HomeRouter: HomeRoutable {
    
    func pushToUserListViewController() {
        let userListViewController = UIStoryboard.init(name: "User", bundle: .main).instantiateViewController(withIdentifier: "UserListViewController")
        self.viewController.navigationController?.pushViewController(userListViewController, animated: true)
    }
}
