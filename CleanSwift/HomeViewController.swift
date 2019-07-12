//
//  ViewController.swift
//  CleanSwift
//
//  Created by Mohammad Tahir on 11/07/19.
//  Copyright © 2019 iOSMaster. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: Router
    
    lazy var router: HomeRoutable = HomeRouter(
        viewController: self
    )
    
    // MARK: - ViewLife Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pushToUserList(_ sender: UIButton) {
        
        self.router.pushToUserListViewController()
    }
}

