//
//  MVCViewController.swift
//  MVC
//
//  Created by Mohammad Tahir on 11/07/19.
//  Copyright © 2019 iOSMaster. All rights reserved.
//

import UIKit

/**
 - CleanSwift Pattern
 - Access Control Should be use in your code.
 - Code Commenting & Alignment.
 - Do not use lenghty funcion break them if you need.
 - String Property less then use
 - don't use repeated code
 - try to use genric's
 - create extension's, Helper  classes.
 - Each Controller should have denit method and cross check it call or not. if don't call thats means your class wouldn't go for ARC. There is strong property available.
 - You can use Subclasses for code cleaning and devidation in the particular section code. Like Header Subclass have own code, Same as Table Cell have on class code don't write the tableCell code in the controller. All Comments, I tried in my code.
 */
class UserListViewController: UIViewController {
    
    // we can use tableView Subclass, if we use don't need to write entire tableView code in this controller, it would be separate.
    @IBOutlet weak private var userListTableView: UITableView! {
        didSet {
            self.userListTableView.dataSource = self
            self.userListTableView.delegate = self
        }
    }
    
    // MARK: Interactor
    
    private lazy var interactor: UserListBusinessLogic = UserListInteractor(
        presenter: self
    )
    
    // MARK: Router
    
    lazy var router: UserListRoutable = UserListRouter(
        viewController: self
    )
    
    private var viewModel: UserListModels.ViewModel?
    
    // MARK: - ViewController Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.interactor.fetchUserList(with: UserListModels.FetchRequest())
    }
    
    // dealloc
    deinit {
        print(#function, String(describing: self))
    }
}

// MARK: - UITableViewDataSource -

extension UserListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.viewModel?.userList.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // if you have multiple return type cell just create your function's and set them by ur case
        return self.configureUserListCell(for: indexPath)
    }
    
    // MARK: - Configure User List Cell
    private func configureUserListCell(for indexPath: IndexPath) -> UITableViewCell {
        // Here you use genrics for register the cell and xib's
        guard let cell = self.userListTableView.dequeueReusableCell(withIdentifier: CellUserList.identifier, for: indexPath) as? CellUserList else { return UITableViewCell()}
        let user = self.viewModel?.userList[indexPath.row]
        cell.user = user
        return cell
    }
}

// MARK: - UITableViewDelegate

extension UserListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.router.pushToUserDetailsViewController()
    }
}

// MARK: - UserListDisplayable -

extension UserListViewController: UserListDisplayable {
    
    /// Api Response `Successfully`
    func displayFetchUserListResult(with response: UserListModels.ViewModel) {
        
        self.viewModel = response
        DispatchQueue.main.async {
            self.userListTableView.reloadData()
        }
    }
    
    /// Api Failure, you can add your parameter in this function.
    func displayUserListError(errorMessage: String) {
        print(#function, errorMessage)
    }
}
